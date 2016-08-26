class AddUserIdToTable < ActiveRecord::Migration
  def change
  
  	add_column :restaurants, :user_id, :integer
  	 add_column :localities, :user_id, :integer
  	 add_column :restaurant_types, :user_id, :integer
  	 add_column :cuisines, :user_id, :integer
  	 






  end
end
