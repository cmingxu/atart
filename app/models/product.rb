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
  validates :artist_id, presence: { message: "艺术家不能空" }
  validates :name, presence: { message: "作品名字不能空" }
  validates :name, uniqueness: { scope: :artist_id, message: "产品名字重复了" }
  validates :price, presence: { message: "价格必须" }
  validates :price, numericality: { message: "价格需是数字" }

  serialize :images, Array

  belongs_to :artist
  belongs_to :order
  has_many :bookmarks, as: :bookmarkable

  mount_uploaders :images, ProductImageUploader

  def buyable?
    true
  end
end
