FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
    association :user
  end
end
