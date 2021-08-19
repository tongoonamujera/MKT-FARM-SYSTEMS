class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_params, if: :devise_controller?

  protected

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :Status, :Company_Name, :cellphone, :Address, :Category, :Pro_Number) }

    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :current_password,:Status, :Company_Name, :cellphone, :Address, :Category, :Pro_Number) }
  end
end
