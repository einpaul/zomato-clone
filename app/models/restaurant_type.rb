class RestaurantType < ActiveRecord::Base



	has_many :restaurant_restaurant_types
	has_many :restaurants, through: :restaurant_restaurant_types

	has_many :locality_restaurant_types
	has_many :localities, through: :locality_restaurant_types


	validates :name, presence: true

end
