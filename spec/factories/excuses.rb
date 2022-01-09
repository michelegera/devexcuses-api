# frozen_string_literal: true

FactoryBot.define do
  factory :excuse do
    text { Faker::Lorem.sentence }
  end
end
