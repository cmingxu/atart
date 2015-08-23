# == Schema Information
#
# Table name: event_markers
#
#  id         :integer          not null, primary key
#  x          :integer
#  y          :integer
#  word       :string(255)
#  link       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe EventMarker, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
