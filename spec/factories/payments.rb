FactoryGirl.define do
  factory :payment do
    debt
    payment_date Date.today
    value 9.99
  end
end
