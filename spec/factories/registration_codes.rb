FactoryBot.define do
  factory :registration_code do
    email { Faker::Internet.email }
    first_name { Faker::Name.name }
    user
  end
end
