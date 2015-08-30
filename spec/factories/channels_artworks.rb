# == Schema Information
#
# Table name: channels_artworks
#
#  id         :integer          not null, primary key
#  channel_id :integer
#  artwork_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :channels_artwork do
    channel_id 1
artwork_id 1
  end

end
