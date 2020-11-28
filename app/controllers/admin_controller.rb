class AdminController < ApplicationController
  http_basic_authenticate_with name: 'chamepp', password: 'chamepp'
  
  # Admin Login
  def admin; end

  # Create Login
  def create
    admin = Admin.find_by(username: params[:username])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to dashboard_path
    else
      render json: {
        session: :dead,
        login: :failed
      }
    end
  end

  # Destroy LogIn
  def destroy
    reset_session
    redirect_to root_path
  end

  # Logged In
  def logged_in
    if @current_admin
      render json: {
        logged_in: true,
        admin: @current_admin
      }

    else
      render json: {
        logged_in: false
      }
    end
  end
end
