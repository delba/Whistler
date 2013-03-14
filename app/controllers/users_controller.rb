class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new
		@user.username = params[:user][:username]
		@user.email = params[:user][:email]
		@user.first_name = params[:user][:first_name]
		@user.last_name = params[:user][:last_name]
		@user.password = params[:user][:password]
		@user.save

		redirect_to user_path(@user.username)
	end

	def show
		@user = User.find_by_username(params[:username])
	end

end