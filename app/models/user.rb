# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  roles                  :string(255)
#  visible                :boolean          default(TRUE)
#  uuid                   :string(255)
#  avatar                 :string(255)
#  lng                    :decimal(9, 5)
#  lat                    :decimal(9, 5)
#  area                   :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#  nickname               :string(255)
#

class User < ActiveRecord::Base
  include UUID
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:qq_connect]

  scope :normal_user, -> { where( "roles LIKE '%user%'" ) }
  scope :admin, -> { where( "roles LIKE '%admin%'" ) }

  has_many :orders
  has_many :bookmarks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :artworks, dependent: :destroy
  has_many :fund_raisings, dependent: :destroy
  has_many :fund_raise_supports, dependent: :destroy
  has_many :messages, foreign_key: :send_to_id, dependent: :destroy

  mount_uploader :avatar, UserAvatarUploader
  serialize :roles

  def self.from_omniauth(auth)
    Rails.logger.error auth
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      #user.email = auth.info.nickname
      user.password = Devise.friendly_token[0,20]
    end
  end

  before_create do |u|
    u.roles = ['user']
  end

  def user?
    self.roles.include? "user"
  end

  def admin?
    self.roles.include?("admin")
  end

  def artist?
    self.roles.include?("artist")
  end

  def make_admin!
    self.roles << "admin"
    self.roles.uniq!
    self.save!
  end

  def remove_admin!
    self.roles.delete("admin")
    self.save
  end

  def make_artist!
    self.roles << "artist"
    self.roles.uniq!
    self.save!
  end

  def remove_artist!
    self.roles.delete("artist")
    self.save
  end

  def roles_in_words
    [self.user? ? "注册用户" : nil,  self.admin? ? "管理员" : nil].compact
  end

  def name
    self.nickname || self.email
  end

  def fav_count
    Bookmark.where(bookmarkable: self).count
  end

  def fav_other_count
    self.bookmarks.user_bookmarks.count
  end
end
