# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    # super
    @user = User.find_by(email: params['email'])

    if @user.present? && @user.valid_password?(params[:password])
      session[:user_id] = @user.id
      render json: {
        logged_in: true,
        user: @user,
        session: session
      }
    else
      render json: {
        status: "Failed to log in"
      }
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
