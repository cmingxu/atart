# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  status         :string(255)
#  user_id        :integer
#  artist_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  product_id     :integer
#  pay_method     :string(255)
#  pay_amount     :decimal(8, 2)
#  transaction_id :string(255)
#  bank           :string(255)
#  paid_at        :datetime
#  ship_address   :string(255)
#  contact_name   :string(255)
#  contact_phone  :string(255)
#  remark         :text(65535)
#

FactoryGirl.define do
  factory :order do
    status "MyString"
user_id 1
artist_id 1
  end

end
