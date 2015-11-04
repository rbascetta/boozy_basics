class DrinksController < ApplicationController

	def index 
		@drinks = Drink.all
	end
end



#def create
		#@drink = Drink.new(drink_params)
		#if @drink.save
			#session[:drink_id] = @drink.id
			#flash[:notice] = "You have successfully signed up"
			#redirect_to drinks_path
		#else
			#render 'new'
		#end
	#end

	#private
    # Implement Strong Params
   # def user_paramsß
      #params.require(:user).permit(:title, :base, :indredients, :directions)
  #end

