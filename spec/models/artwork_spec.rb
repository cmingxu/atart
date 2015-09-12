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

require 'rails_helper'

RSpec.describe Artwork, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
