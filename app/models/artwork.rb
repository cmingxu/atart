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
#

class Artwork < ActiveRecord::Base
end
