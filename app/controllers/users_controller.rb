class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.username)
    else
      render :new
    end
  end

  def show
    @user = User.find_by(username: params[:username])
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :username,
      :password,
      :password_confirmation
    )
  end
end
