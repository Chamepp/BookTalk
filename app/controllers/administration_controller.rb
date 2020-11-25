class AdministrationController < ApplicationController
  http_basic_authenticate_with name: 'ashkan', password: 'ashkan'

  # Admin Page
  def admin; end


end
