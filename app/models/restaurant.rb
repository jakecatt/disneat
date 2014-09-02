class Restaurant < ActiveRecord::Base
	def food_recomendations
		if self.age > 20
			Restaurant.all
		else
			Restaurant.where( :serves_alcohol => false )
		end	
	end
end