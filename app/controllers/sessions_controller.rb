class SessionsController < ApplicationController


  # Login View
  def login; end

  # Create Login
  def create
    user = User.find_by(params[email: params[:email]])

    if user & user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'User Successfully Logged In !'
      redirect_to root_path
    else
      flash[:warning] = 'Wrong Credentials !!!'
      redirect_to login_path
    end
  end

  # Destroy LogIn
  def destroy
    session[:user_id] = nil
    flash[:success] = 'Logged Out Successfull !'
    redirect_to root_path
  end


end
