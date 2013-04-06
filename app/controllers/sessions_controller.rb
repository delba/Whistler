class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_login(params[:login])

    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.username)
    else
      flash.now[:notice] = 'Wrong email/password combination'
      render :new
    end
  end

  def destroy
    reset_session

    # TODO change
    render nothing: true 
  end
end
