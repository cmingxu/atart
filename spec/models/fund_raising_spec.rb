# == Schema Information
#
# Table name: fund_raisings
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  en_name        :string(255)
#  image          :string(255)
#  moderator_id   :integer
#  user_id        :integer
#  target         :integer
#  current_raised :integer
#  begin_at       :datetime
#  end_at         :datetime
#  story          :text(65535)
#  each_support   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe FundRaising, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
