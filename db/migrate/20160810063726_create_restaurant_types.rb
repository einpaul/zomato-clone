class CreateRestaurantTypes < ActiveRecord::Migration
  def change
    create_table :restaurant_types do |t|
      t.string :name
      t.integer :restaurant_id
      t.integer :locality_id

      t.timestamps
    end
  end
end
