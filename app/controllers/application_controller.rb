class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_params, if: :devise_controller?
  skip_before_action :verify_authenticity_token
  helper_method :find_current_user

  protected

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :company_name, :cellphone, :address, :category, :pro_number, :username) }

    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :current_password, :company_name, :cellphone, :address, :category, :pro_number, :username) }
  end

  def find_current_user
    current_user
  end
end
