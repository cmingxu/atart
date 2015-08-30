# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  price          :decimal(8, 2)
#  artist_id      :integer
#  preorder_price :decimal(8, 2)
#  name           :text(65535)
#  short_desc     :text(65535)
#  desc           :text(65535)
#  images         :text(65535)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  enabled        :boolean          default(TRUE)
#

FactoryGirl.define do
  factory :product do
    price ""
artist_id 1
preorder_price ""
name "MyText"
short_desc "MyText"
desc "MyText"
images "MyText"
  end

end
