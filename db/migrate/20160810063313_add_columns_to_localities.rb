class AddColumnsToLocalities < ActiveRecord::Migration
  def change
  
  	add_column :localities, :restaurant_id, :integer

  end
end
