FactoryBot.define do
  factory :licence_administration do
    vehicle { nil }
    licence_number { "MyString" }
    expiry_date { "2023-07-23" }
  end
end
