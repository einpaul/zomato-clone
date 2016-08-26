class CreateLocalityRestaurantTypes < ActiveRecord::Migration
  def change
    create_table :locality_restaurant_types do |t|
      t.integer :locality_id
      t.integer :restaurant_type_id

      t.timestamps
    end
  end
end
