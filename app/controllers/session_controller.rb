class SessionController < ApplicationController

	def new

	end

	def create
		@user = User.find_by(email: params[:email])
		if @user.try(:authenticate, params[:password])
			session[:current_user] = @user
			redirect_to root_path, notice: "logged in"
		else 
			flash[:alert] = "wrong info"
			render :new
		end
	end

	def logout
		reset_session
		redirect_to root_path, notice: 'goodbye'
	end

end