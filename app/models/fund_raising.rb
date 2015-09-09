# == Schema Information
#
# Table name: fund_raisings
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  en_name        :string(255)
#  image          :string(255)
#  moderator_id   :integer
#  user_id        :integer
#  target         :integer
#  current_raised :integer
#  begin_at       :datetime
#  end_at         :datetime
#  story          :text(65535)
#  each_support   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class FundRaising < ActiveRecord::Base
  validates :name, presence: true
  validates :en_name, presence: true
  validates :target, presence: true
  validates :begin_at, presence: true
  validates :end_at, presence: true
  validates :story, presence: true
  validates :each_support, presence: true

  belongs_to :user
  belongs_to :moderator

  has_many :fund_raise_supports

  mount_uploader :image, FundRaisingImageUploader
end
