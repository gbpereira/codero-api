# encoding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Name #{n}" }
    sequence(:email) { |n| "email#{n}@example.com" }
    sequence(:phone) { |n| "#{n}" }
    sequence(:nickname) { |n| "Nickname #{n}" }

    trait :creator do
      sequence(:name) { |n| "Creator #{n}" }
    end

    trait :recipient do
      sequence(:name) { |n| "Recipient #{n}" }
    end
  end
end
