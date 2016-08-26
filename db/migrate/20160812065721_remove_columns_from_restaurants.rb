class RemoveColumnsFromRestaurants < ActiveRecord::Migration
  def change
  

  	  	  remove_column :restaurants, :opening_days
  	  	  remove_column :restaurants, :restaurant_type_id
  	  	  remove_column :restaurants, :cuisine_id






  end
end
