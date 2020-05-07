class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  
  
  
  private
  
  # sign_upの時にusernameを許可する
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:username])
  end
end
