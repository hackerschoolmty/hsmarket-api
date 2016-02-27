require 'rails_helper'

RSpec.describe Item, :type => :model do
  let(:item) { FactoryGirl.build(:item) }

  context 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:product) }
  end
end
