class AddColumnsToRestaurants < ActiveRecord::Migration
  def change
  
  	add_column :restaurants, :opening_days, :string
  	add_column :restaurants, :opening_time, :integer
  	add_column :restaurants, :closing_time, :integer


  end
end
