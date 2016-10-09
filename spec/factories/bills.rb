FactoryGirl.define do
  factory :bill do
    association :creator, factory: :user
    association :recipient, factory: :user
    due_date Date.today
    value 9.99
  end
end
