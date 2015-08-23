# == Schema Information
#
# Table name: channels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  en_name    :string(255)
#  image      :string(255)
#  enabled    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :channel do
    name "MyString"
en_name "MyString"
image "MyString"
  end

end
