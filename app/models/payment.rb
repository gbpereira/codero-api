class Payment < ApplicationRecord
  belongs_to :debt

  validates :payment_date, presence: true
  validates :debt, presence: true
  validates :value, presence: true
end
