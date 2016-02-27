class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity, default: 0
      t.decimal :unit_price, default: 0
      t.decimal :total, default: 0

      t.timestamps null: false
    end
  end
end
