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

class ChannelsArtwork < ActiveRecord::Base
  belongs_to :channel
  belongs_to :artwork
end
