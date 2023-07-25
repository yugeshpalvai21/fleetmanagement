FactoryBot.define do
  factory :maintenance do
    vehicle { nil }
    description { "MyText" }
    maintenance_date { "2023-07-23" }
    cost { "9.99" }
  end
end
