class ChannelsArtwork < ActiveRecord::Base
  belongs_to :channel
  belongs_to :artwork
end
