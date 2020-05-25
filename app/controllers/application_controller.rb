class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Include Application helper.
	include ApplicationHelper
 
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up)
		devise_parameter_sanitizer.permit(:account_update)
	end
	

  
end
