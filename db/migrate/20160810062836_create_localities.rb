class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :restaurant_type_id

      t.timestamps
    end
  end
end
