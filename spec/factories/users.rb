# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  roles                  :string(255)
#  visible                :boolean          default(TRUE)
#  uuid                   :string(255)
#  avatar                 :string(255)
#  lng                    :decimal(9, 5)
#  lat                    :decimal(9, 5)
#  area                   :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#

FactoryGirl.define do
  factory :user do
    email { "#{rand 1000}@bigo.com" }
password "MyString"
  end

end
