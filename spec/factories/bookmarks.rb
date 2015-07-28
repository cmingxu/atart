# == Schema Information
#
# Table name: bookmarks
#
#  id                :integer          not null, primary key
#  bookmarkable_id   :integer
#  bookmarkable_type :string(255)
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :bookmark do
    bookmarkable_id 1
bookmarkable_type "MyString"
user_id 1
  end

end
