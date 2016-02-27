FactoryGirl.define do
  factory :product do
    shop_id  { FactoryGirl.create(:shop).id }
    name "MyString"
    description "MyText"
    price "9.99"
    quantity 1
  end
end
