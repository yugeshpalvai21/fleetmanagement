FactoryBot.define do
  factory :vehicle do
    make { "MyString" }
    model { "MyString" }
    color { "MyString" }
    tracking_unit { nil }
  end
end
