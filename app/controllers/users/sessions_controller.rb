# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_signed_out_user
  prepend_before_action :require_no_authentication,  only:[:cancel]

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    @user = User.find_by(email: params['email'])

    if valid_user_auth(@user)
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
  def destroy
        reset_session
        render json: {
          logged_in: false,
          status: "Ok",
          user: []
        }
  end

  def logged_in
    if session.has_key?(:user_id)
      render json: {
        logged_in: true,
        user: User.find(session[:user_id]),
        session: session
      }

    else
      render json: {
        logged_in: false,
        user: []
      }
    end

    def log_out
      id = params[:id]
      if session[:user_id] = id
        reset_session
        render json: {
          logged_in: false,
          status: "Ok",
          user: []
        }
      end
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def valid_user_auth user
    user.present? && user.valid_password?(params[:password])
  end 
end
