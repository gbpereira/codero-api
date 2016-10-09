class Bill < ApplicationRecord
  # associations
  belongs_to :creator, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
  has_many :debts

  validates :creator, presence: true
  validates :recipient, presence: true
  validates :due_date, presence: true
  validates :value, presence: true
end
