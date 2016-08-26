class BeenHere < ActiveRecord::Base


	belongs_to :restaurant
	belongs_to :user





def check_been_here(restaurant_id,user_id)


		 if (Restaurant.where('restaurant_id = ? AND user_id = ?',restaurant_id, user_id).count!=0) 
		 	 return true  #link_to "Been here", restaurants_been_here_path(restaurant_id: restaurant_id) 
		else  
			return false
		end


	end
end
