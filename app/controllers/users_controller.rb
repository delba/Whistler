class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])

		redirect_to user_path(@user.username)
	end

	def show
		@user = User.find_by_username(params[:username])
	end

end