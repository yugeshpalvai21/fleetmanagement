class Customer < ApplicationRecord
    has_many :vehicles, dependent: :destroy

    def self.search data
        where(email: data["Email"].strip).first_or_create do |customer|
            customer.name = data["Name"].strip.downcase
            customer.nationality = data["Nationality"].strip.downcase
        end
    end

    def self.by_nationality
        group(:nationality).count
    end

    def self.avg_odometer_by_nationality
        includes(:vehicles).group(:nationality).average(:odometer_reading)
    end
end
