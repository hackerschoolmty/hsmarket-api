FactoryGirl.define do
  factory :order do
    shop_id { FactoryGirl.create(:shop).id }
    user_id { FactoryGirl.create(:client).id }
    total "9.99"
    status 1
  end
end
