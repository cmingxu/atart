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

FactoryGirl.define do
  factory :artwork do
    name "MyText"
desc "MyText"
artist_id 1
images "MyText"
  end

end
