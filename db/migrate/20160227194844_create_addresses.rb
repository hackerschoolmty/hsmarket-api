class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :owner_type
      t.integer :owner_id
      t.string :name
      t.integer :address_type
      t.string :street
      t.string :street_number
      t.string :suite
      t.string :neighbourhood
      t.string :municipality
      t.string :state
      t.string :country
      t.integer :zipcode
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
