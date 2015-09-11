# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  name       :text(65535)
#  desc       :text(65535)
#  artist_id  :integer
#  images     :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  address    :string(255)
#  location   :string(255)
#

class Artwork < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true

  has_many :bookmarks, as: :bookmarkable
  belongs_to :user
  has_many :channels_artworks

  scope :hot, -> { where('1=1') }

  serialize :images, Array
  mount_uploaders :images, ProductImageUploader

  def cover
    images.first
  end
end
