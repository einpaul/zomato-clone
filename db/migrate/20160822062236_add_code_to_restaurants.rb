class AddCodeToRestaurants < ActiveRecord::Migration
  def change
 
  	add_column :restaurants, :code, :string


  end
end
