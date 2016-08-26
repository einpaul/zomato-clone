class CreateRestaurantRestaurantTypes < ActiveRecord::Migration
  def change
    create_table :restaurant_restaurant_types do |t|
      t.integer :restaurant_id
      t.string :restaurant_type_id

      t.timestamps
    end
  end
end
