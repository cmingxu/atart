# == Schema Information
#
# Table name: fund_raise_supports
#
#  id            :integer          not null, primary key
#  fund_raise_id :integer
#  user_id       :integer
#  amount        :integer
#  message       :text(65535)
#  status        :string(255)
#  pay_method    :string(255)
#  pay_bank      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :fund_raise_support do
    fund_raise_id 1
user_id 1
amount 1
message "MyText"
status "MyString"
pay_method "MyString"
pay_bank "MyString"
  end

end
