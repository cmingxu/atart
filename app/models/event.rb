# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  gallery     :string(255)
#  artist_name :string(255)
#  address     :string(255)
#  lng         :decimal(10, )
#  lat         :decimal(10, )
#  begin_at    :datetime
#  end_at      :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  has_many :bookmarks, as: :bookmarkable
end
