class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|

    	t.integer :restaurant_type_id
    	t.integer :locality_id
    	t.integer :cuisine_id
    	t.string :name
    	t.time :opening_hours
    	t.integer :cost_for_two
    	t.integer :contact
    	t.text :address

      t.timestamps null: false
    end
  end
end
