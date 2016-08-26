class Review < ActiveRecord::Base

	belongs_to :restaurant
	belongs_to :user



	validates_presence_of  :restaurant_id, :rating

end
