class WishlistsController < ApplicationController




		def index
			@wishlists = current_user.wishlists

		end

		def new
			@wishlist = Wishlist.new

		end


	def create
		wish = Wishlist.new
		@restaurant = Restaurant.find(params[:restaurant_id])
		wish.user_id = current_user.id
		wish.restaurant_id = @restaurant.id
		if wish.save 
			redirect_to restaurant_path(@restaurant)
		else
			render action: "back"     
		end
	end	



	def destroy
		@wishlist = current_user.wishlists.find(params[:id])
		@wishlist.destroy
		redirect_to wishlists_path, notice: "Successfully deleted #{@wishlist.name}"
	end
 

	

	private

	def wishlist_params   
		params[:wishlist].permit(:restaurant_id, :user_id)

	end
end
