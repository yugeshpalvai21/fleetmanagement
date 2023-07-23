FactoryBot.define do
  factory :tracking_unit do
    vehicle { nil }
    tracking_code { "MyString" }
    last_reported_at { "2023-07-23 14:15:40" }
  end
end
