FactoryBot.define do
  factory :vehicle do
    model { "MyString" }
    year { 1 }
    chassis_number { 1 }
    color { "MyString" }
    registration_date { "2021-03-11 23:08:40" }
    odometer_reading { 1 }
    customer { nil }
  end
end
