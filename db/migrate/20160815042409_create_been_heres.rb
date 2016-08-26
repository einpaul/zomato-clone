class CreateBeenHeres < ActiveRecord::Migration
  def change
    create_table :been_heres do |t|
    	t.integer :user_id
    	t.integer :restaurant_id
    	t.boolean :status  



      	t.timestamps null :false
    end
  end
end
