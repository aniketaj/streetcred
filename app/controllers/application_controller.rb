class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :firstname
    devise_parameter_sanitizer.for(:sign_up) << :lastname
    devise_parameter_sanitizer.for(:sign_up) << :program
    devise_parameter_sanitizer.for(:sign_up) << :gradyear
    devise_parameter_sanitizer.for(:sign_up) << :funcexpert
    devise_parameter_sanitizer.for(:sign_up) << :indexpert
    devise_parameter_sanitizer.for(:sign_up) << :poetquant
    devise_parameter_sanitizer.for(:sign_up) << :efftime
    devise_parameter_sanitizer.for(:sign_up) << :liprofile
    devise_parameter_sanitizer.for(:sign_up) << :imageurl

    devise_parameter_sanitizer.for(:account_update) << :firstname
    devise_parameter_sanitizer.for(:account_update) << :lastname
    devise_parameter_sanitizer.for(:account_update) << :program
    devise_parameter_sanitizer.for(:account_update) << :gradyear
    devise_parameter_sanitizer.for(:account_update) << :funcexpert
    devise_parameter_sanitizer.for(:account_update) << :indexpert
    devise_parameter_sanitizer.for(:account_update) << :poetquant
    devise_parameter_sanitizer.for(:account_update) << :efftime
    devise_parameter_sanitizer.for(:account_update) << :liprofile
    devise_parameter_sanitizer.for(:account_update) << :imageurl
  end

end
