class DrinksController < ApplicationController
  
	def index 
		@drinks = Drink.all
    @bg = "lol"
	end

  def show
    @drink = Drink.find(params[:id])
  end

	def new
		@drink = Drink.new
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


  def edit
    @drink = Drink.find(params[:id])
    @bg = "edit"
  end

  def update
    @drink = Drink.find(params[:id])
    if @drink.update(drink_params)
      redirect_to @drink, notice: 'Drink updated'
    else
      render :edit
    end
  end


  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    redirect_to drinks_path, notice: 'Drink deleted.' 
  end

end