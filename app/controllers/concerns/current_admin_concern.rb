module CurrentAdminConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_admin
  end


  def set_current_admin
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
  end
end