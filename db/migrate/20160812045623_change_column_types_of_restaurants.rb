class ChangeColumnTypesOfRestaurants < ActiveRecord::Migration
  def change
  
  		  change_column :restaurants, :opening_time, :datetime
  		  change_column :restaurants, :closing_time, :datetime



  end
end
