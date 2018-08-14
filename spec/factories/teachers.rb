# frozen_string_literal: true

FactoryBot.define do
  factory :teacher do
    first_name { Faker::Name.first_name }
    grade { Grade.all.sample }
    last_name { Faker::Name.last_name }
    uuid { SecureRandom.uuid }

    trait :inactive do
      is_active false
    end
  end
end
