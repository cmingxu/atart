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
#  enabled    :boolean
#  hot        :boolean
#

class Artwork < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :images, presence: true

  has_many :bookmarks, as: :bookmarkable
  belongs_to :user
  has_many :channels_artworks

  scope :hot, -> { where(hot: true) }
  scope :enabled, -> { where(enabled: true) }

  serialize :images, Array
  mount_uploader :images, ProductImageUploader

  def cover
    images
  end
end
