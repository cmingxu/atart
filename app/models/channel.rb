# == Schema Information
#
# Table name: channels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  en_name    :string(255)
#  image      :string(255)
#  enabled    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Channel < ActiveRecord::Base
  validates :name, presence: true
  validates :en_name, presence: true
  validates :image, presence: true

  has_many :artworks
  belongs_to :moderator
  has_many :channels_artworks
  has_many :artworks, through: :channels_artworks, class_name: :Artwork


  mount_uploader :image, ChannelCoverUploader
end