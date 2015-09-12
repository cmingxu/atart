# == Schema Information
#
# Table name: fund_raisings
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  en_name        :string(255)
#  image          :string(255)
#  moderator_id   :integer
#  user_id        :integer
#  target         :integer
#  current_raised :integer
#  begin_at       :datetime
#  end_at         :datetime
#  story          :text(65535)
#  each_support   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  enabled        :boolean
#

FactoryGirl.define do
  factory :fund_raising do
    name "MyString"
en_name "MyString"
image "MyString"
moderator_id 1
user_id 1
target 1
current_raised 1
begin_at "2015-09-09 23:55:28"
end_at "2015-09-09 23:55:28"
story "MyText"
each_support 1
  end

end
