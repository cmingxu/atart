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

FactoryGirl.define do
  factory :event do
    name "MyString"
gallery "MyString"
artist_name "MyString"
address "MyString"
lng "9.99"
lat "9.99"
begin_at "2015-08-02 16:16:02"
end_at "2015-08-02 16:16:02"
  end

end
