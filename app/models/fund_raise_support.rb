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
  belongs_to :user
  belongs_to :fund_raise, classname: "FundRaising"

  aasm column: :status, :whiny_transitions => false do
    state :new_created, initial: true
    state :paid

    event :pay do
      transitions from: [:new_created], to: [:paid]
    end

  end
end
