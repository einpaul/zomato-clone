class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :review_body
      t.integer :rating
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
