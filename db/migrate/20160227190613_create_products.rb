class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :shop_id
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity, default: 0

      t.timestamps null: false
    end
  end
end
