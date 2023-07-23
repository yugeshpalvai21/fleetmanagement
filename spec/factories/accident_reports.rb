FactoryBot.define do
  factory :accident_report do
    vehicle { nil }
    description { "MyText" }
    date { "2023-07-23" }
  end
end
