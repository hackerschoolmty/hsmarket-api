require 'rails_helper'

RSpec.describe Shop, :type => :model do
  let(:shop) { FactoryGirl.build(:shop) }

  context 'associations' do
    it { should have_many(:products) }
  end

end
