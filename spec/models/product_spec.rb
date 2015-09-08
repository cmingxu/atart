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
#  address        :string(255)
#  en_name        :string(255)
#  width          :string(255)
#  height         :string(255)
#  thickness      :string(255)
#  date_back      :string(255)
#  style          :string(255)
#  material       :string(255)
#  position       :integer
#

require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
