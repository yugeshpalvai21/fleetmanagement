class Vehicle < ApplicationRecord
  belongs_to :tracking_unit
  validates :odometer, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
