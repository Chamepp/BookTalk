class RegistrationsController < ApplicationController
  include CurrentUserConcern
  
  # SignUp Page
  def signup
    if set_current_user
      render 'pages/404'
    end
  end

  # SignUp Creation
  def create
    user = User.create!(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      avatar: params[:avatar]
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
