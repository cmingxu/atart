FactoryGirl.define do
  factory :comment do
    user_id 1
content "MyText"
commentable_type "MyString"
commentable_id 1
  end

end
