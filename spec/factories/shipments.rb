FactoryBot.define do
  factory :shipment do
    tracking_number { "MyString" }
    origin { "MyString" }
    destination { "MyString" }
    date { "2023-07-25" }
    status { "MyString" }
  end
end
