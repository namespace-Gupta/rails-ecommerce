class Customer < ApplicationRecord
  validates :first_name,  :phone_number, presence: true
end
