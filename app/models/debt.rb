class Debt < ApplicationRecord
  belongs_to :bill
  belongs_to :debtor, class_name: 'User'

  validates :debtor, presence: true
  validates :bill, presence: true
  validates :value, presence: true
end
