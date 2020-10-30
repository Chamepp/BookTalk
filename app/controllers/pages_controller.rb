class PagesController < ApplicationController
  # Main Page
  def index
    @logo = 'BookTalk'
  end

  # Explore Page
  def explore; end

  # SignUp Page
  def signup; end

  # SignUp Creation
  def create
    user = User.new(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
      password: params[:password]
    )

    if user
      session[:user_id] = user.id
      flash[:success] = 'Successfully Created The User !'
      puts('Yaaaayyyy !')
      redirect_to root_path

    else
      flash[:warning] = 'Could Not Create The User !'
      puts('NOoooooooooooo')
      redirect_to signup_path

    end
  end

  # Login Page
  def login; end
end
