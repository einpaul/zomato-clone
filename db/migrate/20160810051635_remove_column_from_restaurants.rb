class RemoveColumnFromRestaurants < ActiveRecord::Migration
  def change


  	  remove_column :restaurants, :opening_hours

  end
end
