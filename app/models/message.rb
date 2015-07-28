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

class Message < ActiveRecord::Base
  belongs_to :send_from, class_name: :user, foreign_key: :send_from_id
  belongs_to :send_to, class_name: :user, foreign_key: :send_to_id
end
