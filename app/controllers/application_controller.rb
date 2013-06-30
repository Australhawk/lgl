class ApplicationController < ActionController::Base
  check_authorization :unless => :devise_controller?
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :profile_name,
        :email, :password, :password_confirmation) }
  end
end
