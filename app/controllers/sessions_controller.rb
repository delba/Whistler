class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.username)
    else
      flash.now[:notice] = 'Wrong email/password combination'
      render :new
    end
  end
end
