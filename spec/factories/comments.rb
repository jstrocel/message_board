FactoryBot.define do
  factory :comment do
    body { "MyText" }
    association :user
    association :post
  end
end
