class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def new
  end

  def login
    @user = User.find_by_email(params[:email])

    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to countries_path
    else
      flash[:notice] = "Incorrect email and password"
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out!"
    redirect_to login_path
  end
end
