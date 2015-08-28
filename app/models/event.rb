# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  gallery     :string(255)
#  artist_name :string(255)
#  address     :string(255)
#  lng         :decimal(10, )
#  lat         :decimal(10, )
#  begin_at    :datetime
#  end_at      :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :artist_name, presence: true
  validates :begin_at, presence: true
  validates :end_at, presence: true

  has_many :bookmarks, as: :bookmarkable
  has_many :event_markers, dependent: :destroy
  mount_uploader :gallery, EventGallayUploader
end
