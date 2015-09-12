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
#  enabled        :boolean
#

class FundRaising < ActiveRecord::Base
  validates :name, presence: true
  validates :en_name, presence: true
  validates :target, presence: true
  validates :begin_at, presence: true
  validates :end_at, presence: true
  validates :story, presence: true
  validates :each_support, presence: true

  scope :enabled, ->() { where(enabled: true) }
  scope :not_close, ->() { where(close: false) }
  scope :close, ->() { where(close: true) }
  scope :time_valid, ->() { where(["begin_at < ? AND ? < end_at ", Time.now, Time.now]) }

  belongs_to :user
  belongs_to :moderator

  has_many :fund_raise_supports, dependent: :destroy, foreign_key: :fund_raise_id


  mount_uploader :image, FundRaisingImageUploader

  def left_hour
    ((self.end_at - Time.now)/1.hours).floor
  end

  def percent_done
    ((self.current_raised.to_f / self.target) * 100).to_i
  end
end
