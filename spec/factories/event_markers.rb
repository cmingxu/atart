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
#  event_id   :integer
#

FactoryGirl.define do
  factory :event_marker do
    x 1
y 1
word "MyString"
link "MyString"
  end

end
