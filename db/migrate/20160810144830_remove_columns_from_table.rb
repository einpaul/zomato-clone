class RemoveColumnsFromTable < ActiveRecord::Migration
  def change
 
  	remove_column :cuisines, :restaurant_id
  	remove_column :localities, :restaurant_id 
  	remove_column :localities, :restaurant_type_id
  	remove_column :restaurant_types, :restaurant_id
  	remove_column :restaurant_types, :locality_id



  end
end
