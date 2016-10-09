FactoryGirl.define do
  factory :debt do
    bill
    value 9.99
    association :debtor, factory: :user
  end
end
