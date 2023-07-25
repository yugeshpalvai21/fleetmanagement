FactoryBot.define do
  factory :vehicle_verification do
    vehicle_id { 1 }
    report_date { "2023-07-23" }
    condition { "MyText" }
    price { "9.99" }
    model { "MyString" }
    make { "MyString" }
    color { "MyString" }
  end
end
