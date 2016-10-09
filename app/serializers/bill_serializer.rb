class BillSerializer < ActiveModel::Serializer
  attributes :due_date, :value, :creator, :recipient

  has_many :debts
end
