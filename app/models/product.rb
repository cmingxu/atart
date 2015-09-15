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

class Product < ActiveRecord::Base
  STYLE = %w(抽象 具体 写意 数字艺术 极简主义 弱象)
  MATERIAL = %w( 布面油彩 纸本绘画 摄影喷绘 雕塑 装置 描绘 行为艺术 多媒体 印刷版画 绘画 综合材料 )
  validates :artist_id, presence: { message: "艺术家不能空" }
  validates :name, presence: { message: "作品名字不能空" }
  validates :name, uniqueness: { scope: :artist_id, message: "产品名字重复了" }
  validates :price, presence: { message: "价格必须" }
  validates :price, numericality: { message: "价格需是数字" }
  validates :width, presence: { message: "宽度不能空" }
  validates :height, presence: { message: "长度不能空" }
  validates :en_name, presence: { message: "英文名称不能空" }

  serialize :images, Array

  belongs_to :artist
  belongs_to :order
  has_many :bookmarks, as: :bookmarkable

  mount_uploader :images, ProductImageUploader

  def buyable?
    true
  end
end
