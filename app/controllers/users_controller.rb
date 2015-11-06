class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
		@bg = "new"
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "You have successfully signed up!"
			redirect_to home_index_path
		else
			render 'new'
		end
	end

	private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end