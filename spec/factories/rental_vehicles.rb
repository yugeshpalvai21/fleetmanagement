FactoryBot.define do
  factory :rental_vehicle do
    category { "MyString" }
    make { "MyString" }
    model { "MyString" }
    registration_number { "MyString" }
    rental_rate { "9.99" }
    available { false }
  end
end
