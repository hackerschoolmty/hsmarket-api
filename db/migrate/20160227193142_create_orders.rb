class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :shop_id
      t.integer :user_id
      t.decimal :total
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
