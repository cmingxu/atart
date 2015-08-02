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
#

class Product < ActiveRecord::Base
  belongs_to :artist
  belongs_to :order

  mount_uploader :images, ProductImageUploader
end
