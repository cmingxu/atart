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

class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :bookmarkable, polymorphic: true

  scope :user_bookmarks, lambda { where(:bookmarkable_type => "User")}
  scope :other_bookmarks, lambda { where.not(:bookmarkable_type => "User")}
end
