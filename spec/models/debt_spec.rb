require 'rails_helper'

RSpec.describe Debt, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:bill) }
    it { is_expected.to belong_to(:debtor) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:debtor) }
    it { is_expected.to validate_presence_of(:bill) }
    it { is_expected.to validate_presence_of(:value) }
  end
end
