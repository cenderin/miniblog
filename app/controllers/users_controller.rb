class UsersController < ApplicationController

	def new
		@user = User.new
	end



	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path, notice: "welcome to the club"
		else
			flash[:alert] = "oops that did not work!"
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :age, :email, :password, :password_confirmation)

	end

end
