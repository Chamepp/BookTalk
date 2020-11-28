class AdministrationController < ApplicationController
  include CurrentAdminConcern

  # Admin Page
  def dashboard
    if set_current_admin

      render :dashboard

    else

      render 'pages/404'

    end
  end
  
  # Products Page
  def control_products
    if set_current_admin

      render :control_products

    else

      render 'pages/404'

    end
  end

  # Customers Page
  def control_customers
    if set_current_admin

      render :control_customers

    else
    render 'pages/404'

    end
  end

end
