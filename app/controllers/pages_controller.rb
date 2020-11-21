class PagesController < ApplicationController
  # Main Page
  def index
    @logo = 'BookTalk'
  end

  # Explore Page
  def explore
    @card = Card.all
  end

  # About Page
  def about; end

  # SignUp Page
  def signup; end

  # New Card


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
      render json: {
        status: :created,
        user: :user
      }

    else
      render json: { status: 500 }
    end
  end
end
