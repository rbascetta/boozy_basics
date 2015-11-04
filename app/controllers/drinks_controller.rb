class DrinksController < ApplicationController
  
	def index 
		@drinks = Drink.all
	end

	def new
		@drink = Drink.new
	end

  def show
    @drink = Drink.find(params[:id])
  end


  def create
    @drink = Drink.new(drink_params)

    respond_to do |format|
      if @drink.save
        format.html { redirect_to @drink, notice: 'Concoction created!' }
      else
        format.html { render :new }
      end
    end
  end

  def drink_params
  	params.require(:drink).permit(:name, :base, :ingredients, :directions)
  end
end

#  def update
#     respond_to do |format|
#       if @drink.update(drink_params)
#         format.html { redirect_to @drink, notice: 'Drink updated' }
#       else
#         format.html { render :edit }
        
#       end
#     end
#   end

#   def destroy
#     @drink.destroy
#     respond_to do |format|
#       format.html { redirect_to drinks_url, notice: 'Drink deleted.' }
      
#     end
 # end