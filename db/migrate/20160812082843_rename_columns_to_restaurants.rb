class RenameColumnsToRestaurants < ActiveRecord::Migration
  def change
  
  	rename_column :reviews, :name, :title


  end
end
