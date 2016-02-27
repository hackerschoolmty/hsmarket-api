require 'rails_helper'

RSpec.describe Product, :type => :model do
  let(:product) { FactoryGirl.build(:product) }

  context 'associations' do
    it { should belong_to(:shop) }
  end
end
