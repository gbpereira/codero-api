require 'rails_helper'

RSpec.describe Bill, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:creator) }
    it { is_expected.to belong_to(:recipient) }
    it { is_expected.to have_many(:debts) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:creator) }
    it { is_expected.to validate_presence_of(:recipient) }
    it { is_expected.to validate_presence_of(:due_date) }
    it { is_expected.to validate_presence_of(:value) }
  end

end
