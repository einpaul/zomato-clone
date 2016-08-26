class Restaurant < ActiveRecord::Base 	

	
	belongs_to :user
	belongs_to :locality
	has_many :reviews

	has_many :been_heres
	belongs_to :wishlists

	has_many :restaurant_restaurant_types
	has_many :restaurant_types, through: :restaurant_restaurant_types


	has_many :cuisine_restaurants
	has_many :cuisines, through: :cuisine_restaurants

	has_many :restaurant_working_days
	has_many :working_days, through: :restaurant_working_days






	before_create :generate_restaurant_code


	validates_presence_of  :name, :opening_time, :closing_time, :cost_for_two, :contact, :address
	validates_length_of :contact, is:10
	validates_numericality_of :contact, :cost_for_two, :opening_time, :closing_time
	validates_uniqueness_of :contact, scope: :user_id




 
	def open_now
		if Time.now.to_s(:time) >= self.opening_time.to_s(:time) && Time.now.to_s(:time) <= self.closing_time.to_s(:time) 
			return "Open"
		else
			return "Closed"
		end
	end

	#def check_been_here


		 #if (BeenHere.where('restaurant_id = ? and user_id = ?',self.restaurant_id, self.user_id).count!=0) 

		 	 #link_to "Been here", restaurants_been_here_path(restaurant_id: @restaurant.id) 

		#else 
		 
		#return nil


		#end


	#end



		

	def generate_restaurant_code
		self.code = "#{self.name[0..2]} - #{Restaurant.last.nil? ? 1 : Restaurant.last.id + 1} "
	end
end
	