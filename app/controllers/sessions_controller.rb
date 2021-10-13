class SessionsController < ApplicationController

  # login
  def create
    @user = User.find_by(email: params[:email])

    if !! @user && @user.authenticate(params[:password])
      session[:user_id] = @user.i
      redirect_to posts_path
    else
      message = "Something went wrong! Make sure your email and password are correct"
      redirect_to login_path, notice: message
    end
  end 

end