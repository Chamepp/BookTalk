class SessionsController < ApplicationController

  include CurrentUserConcern

  def new; end

  # Login View
  def login
    if set_current_user
      render 'pages/404'
    end
  end

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
    reset_session
    render json: {
        status: 200,
        logged_out: false
    }
  end

  # Logged In
  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }

    else
      render json: {
        logged_in: false
      }
    end
  end

end
