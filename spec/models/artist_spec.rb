# == Schema Information
#
# Table name: artists
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  short_desc     :text(65535)
#  desc           :text(65535)
#  artworks_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  en_name        :string(255)
#  en_desc        :text(65535)
#  en_short_desc  :text(65535)
#  avatar         :string(255)
#  weight         :integer
#  name_initial   :string(255)
#

require 'rails_helper'

RSpec.describe Artist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
