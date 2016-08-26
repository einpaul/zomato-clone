class Locality < ActiveRecord::Base


	has_many :restaurants

	has_many :locality_restaurant_types
	has_many :restaurant_types, through: :locality_restaurant_types


	validates :name, presence: true

end
