 FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    password {"password123"}
    name { Faker::Name.name }
    about_me { Faker::Marketing.buzzwords }
  end
end