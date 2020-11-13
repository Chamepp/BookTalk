class RegistrationsController < ApplicationController
  
  # SignUp Page
  def signup; end

  # SignUp Creation
  def create
    user = User.create!(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user
      session[:user_id] = user.id
      render json: {
        Status: :created,
        User_Id: user.id,
        Firstname: user.fname,
        Lastname: user.lname
      }

    else
      render json: { status: 500 }
    end
  end
end
