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

require 'rails_helper'

RSpec.describe FundRaiseSupport, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
