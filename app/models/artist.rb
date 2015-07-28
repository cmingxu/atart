# == Schema Information
#
# Table name: artists
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  short_desc     :text(65535)
#  desc           :text(65535)
#  artworks_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Artist < ActiveRecord::Base
end
