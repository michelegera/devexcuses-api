FactoryBot.define do
  factory :excuse do
    text { Faker::Lorem.sentence }
  end
end
