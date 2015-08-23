# == Schema Information
#
# Table name: channels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  en_name    :string(255)
#  image      :string(255)
#  enabled    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Channel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
