class Customer < ApplicationRecord
    has_many :vehicles
    def self.search data
        where(email: data["Email"].strip).first_or_create do |customer|
            customer.name = data["Name"].strip.downcase
            customer.nationality = data["Nationality"].strip.downcase
        end
    end
end
