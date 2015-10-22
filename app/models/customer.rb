class Customer < ActiveRecord::Base
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email_address, presence: true, uniqueness: true
end
