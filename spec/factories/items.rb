FactoryGirl.define do
  factory :item do
    order_id { FactoryGirl.create(:order).id }
    product_id { FactoryGirl.create(:product).id }
    quantity 2
    unit_price '9.99'
  end
end
