class CreateWorkingDays < ActiveRecord::Migration
  def change
    create_table :working_days do |t|
      t.string :name
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
