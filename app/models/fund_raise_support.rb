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

class FundRaiseSupport < ActiveRecord::Base
  include AASM

  belongs_to :user
  belongs_to :fund_raise, class_name: "FundRaising", foreign_key: :fund_raise_id
  belongs_to :fund_raising, foreign_key: :fund_raise_id

  def decorated_id
    "104" + sprintf("%05d", self.id)
  end

  def self.find_by_decorated_id(did)
    self.find(did.to_s[3..-1])
  end

  def self.fbdi(did)
    self.find_by_decorated_id(did)
  end


  aasm column: :status, :whiny_transitions => false do
    state :new_created, initial: true
    state :paid

    event :pay do
      transitions from: [:new_created], to: [:paid], after: :fund_raise_support_paid
    end
  end

  def fund_raise_support_paid
    self.fund_raise.current_raised ||= 0
    self.fund_raise.current_raised += self.amount

    if self.fund_raise.current_raised > self.fund_raise.target
      self.fund_raise.close = true
    end

    self.fund_raise.save
  end

  def status_in_readable_format
    case self.status.to_sym
    when :new_created then "未支付"
    when :paid then "已支付"
    end
  end
end
