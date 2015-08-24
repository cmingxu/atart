# == Schema Information
#
# Table name: event_markers
#
#  id         :integer          not null, primary key
#  x          :integer
#  y          :integer
#  word       :string(255)
#  link       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventMarker < ActiveRecord::Base
  belongs_to :event

  validates :x, presence: true
  validates :y, presence: true
  validates :word, presence: true
  validates :link, presence: true
end
