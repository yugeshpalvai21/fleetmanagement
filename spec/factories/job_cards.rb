FactoryBot.define do
  factory :job_card do
    vehicle { nil }
    description { "MyText" }
    job_type { "MyString" }
    date { "2023-07-23" }
  end
end
