FactoryBot.define do
  factory :efuel_management do
    vehicle { nil }
    fuel_type { "MyString" }
    fuel_amount { "9.99" }
    fuel_date { "2023-07-23" }
  end
end
