require 'rails_helper'

RSpec.describe Payment, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:debt) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:debt) }
    it { is_expected.to validate_presence_of(:value) }
    it { is_expected.to validate_presence_of(:payment_date) }
  end
end
