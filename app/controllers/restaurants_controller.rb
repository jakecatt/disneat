class RestaurantsController < ApplicationController
	def index
		@user = User.find( params[:user_id] )
		if @user.age > 20
			@restaurants = Restaurant.all
		else
			@restaurants = Restaurant.where( :serves_alcohol => false )
		end
	end
end