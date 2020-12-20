class ProfileController < ApplicationController
  include CurrentUserConcern


  # Profile Page
  def profile
    unless set_current_user
      render 'pages/404'
    end
    @user = User.all
    @user = User.find_by(params[:id])


  end



  # Profile Setting
  def settings
    unless set_current_user
      render 'pages/404'
    end
    @user = User.all
    @user = User.find_by(params[:id])

  end

end
