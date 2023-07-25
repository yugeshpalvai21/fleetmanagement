FactoryBot.define do
  factory :waste do
    waste_type { "MyString" }
    quantity { "9.99" }
    disposal_method { "MyString" }
    date { "2023-07-25" }
  end
end
