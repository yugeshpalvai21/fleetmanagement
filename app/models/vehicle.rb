class Vehicle < ApplicationRecord
  belongs_to :customer
  has_one :vehicle_verification
end
