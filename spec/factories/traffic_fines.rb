FactoryBot.define do
  factory :traffic_fine do
    vehicle { nil }
    fine_date { "2023-07-23" }
    amount { "9.99" }
    description { "MyText" }
  end
end
