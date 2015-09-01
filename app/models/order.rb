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

class Order < ActiveRecord::Base
  include AASM

  #validates :ship_address, presence: { message: "送货地址不能空" }
  #validates :contact_name, presence: { message: "送货联系人不能空" }
  #validates :contact_phone, presence: { message: "送货联系电话不能空" }

  belongs_to :user
  belongs_to :product

  def decorated_id
    "304" + sprintf("%05d", self.id)
  end

  def self.find_by_decorated_id(did)
    self.find(did.to_s[3..-1])
  end

  def self.fbdi(did)
    self.find_by_decorated_id(did)
  end

  def self.from_cart(cart)
    new do |o|
      o.product_id = cart.line_items.first.product_id
      o.artist_id  = cart.line_items.first.product.artist_id
    end
  end

  aasm column: :status, :whiny_transitions => false do
    state :new_placed, initial: true
    state :confirmed
    state :paid
    state :canceled
    state :shiped

    event :user_confirm do
      transitions from: [:new_placed], to: [:confirmed]
    end

    event :pay do
      transitions from: [:confirmed], to: [:paid]
    end

    event :cancel do
      transitions from: [:paid], to: [:canceled]
    end

    event :ship do
      transitions from: [:paid], to: [:shiped]
    end
  end
end
