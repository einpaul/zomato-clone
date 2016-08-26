class RestaurantsController < ApplicationController

	before_action :authenticate_user!
			load_and_authorize_resource


	def index
		@restaurants = Restaurant.all

	end
	def new
		@restaurant = Restaurant.new
	end
	def create
		@restaurant = Restaurant.new(restaurant_params)
		@restaurant.user_id = current_user.id
	
		if @restaurant.save
			redirect_to restaurants_path      
		else
			render action: "new"        
		end
	end

	def been_here
		been_here = BeenHere.new
		@restaurant = Restaurant.find(params[:restaurant_id])
		been_here.user_id = current_user.id
		been_here.restaurant_id = @restaurant.id
		been_here.status = true
		if been_here.save 
			redirect_to restaurant_path(@restaurant)
		else
			render action: "back"     
		end
	end	

	




	def show 
		begin
			@review = Review.new
			@restaurant = Restaurant.find(params[:id]) # this is what u need to do if  non logged in people shudnt see, ie they cant go to link directly nd write clients/24
			@restaurant.increment!(:view_count) if current_user.id != @restaurant.user_id #increment increases the attribute type by 1		
		rescue ActiveRecord::RecordNotFound       #handling exceptions using devise, if we dont want the user to see error messages
			redirect_to restaurant_path, notice: "Record not found"
		end
	end

	def edit
		@restaurant = current_user.restaurants.find(params[:id]) 	
	end																					
	

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.user_id = current_user.id
		
		if @restaurant.update_attributes(restaurant_params)
			redirect_to restaurant_path(@restaurant.id), notice: "successfully updated"
		else
			render action: "edit"
		end
	end

	def destroy
		@restaurant = current_user.restaurants.find(params[:id])
		@restaurant.destroy
		redirect_to restaurants_path, notice: "Successfully deleted #{@restaurant.name}"
	end

	private

	def restaurant_params   
		params[:restaurant].permit( :locality_id, :name, :cost_for_two, :contact, :opening_time, :closing_time, :address, cuisine_ids: [], restaurant_type_ids: [], working_day_ids: []) 
	end
end










