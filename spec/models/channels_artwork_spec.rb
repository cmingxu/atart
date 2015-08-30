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

require 'rails_helper'

RSpec.describe ChannelsArtwork, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
