class User < ApplicationRecord
  # validations
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :nickname, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
end
