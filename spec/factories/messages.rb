# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  send_from_id :integer
#  send_to_id   :integer
#  content      :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :message do
    send_from_id 1
send_to_id 1
content "MyText"
  end

end
