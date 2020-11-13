class SessionsController < ApplicationController
  def new; end

  # Login View
  def login; end

  # Create Login
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  # Destroy LogIn
  def destroy
    session[:user_id] = nil
    flash[:success] = 'Logged Out Successfully !'
    redirect_to root_path
  end
end
