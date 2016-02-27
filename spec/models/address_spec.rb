require 'rails_helper'

RSpec.describe Address, :type => :model do
  let(:address) { FactoryGirl.build(:address, owner: Factorygirl.create(:client)) }

  context 'associations' do
    it { should belong_to(:owner) }
  end
end
