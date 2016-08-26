class CreateRestaurantWorkingDays < ActiveRecord::Migration
  def change
    create_table :restaurant_working_days do |t|
    	t.integer :restaurant_id
    	t.integer :working_day_id
      t.timestamps null: false
    end
  end
end
