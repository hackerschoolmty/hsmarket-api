require 'rails_helper'

RSpec.describe Order, :type => :model do
  let (:order) { FactoryGirl.create(:order)}

  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:shop) }
  end
end
