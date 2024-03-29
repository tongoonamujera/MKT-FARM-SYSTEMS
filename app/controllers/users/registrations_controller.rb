# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  def index
    render json: {users: User.all}
  end

  # POST /resource
  def create
    user = User.create!(
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"],
      company_name: params['company_name'],
      cellphone: params['cellphone'],
      username: params['username'],
      address: params['address'],
      category: params['category']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user,
        session: session
      }
    else
      render json: {
        status: 500
      }
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def update
    super
  end

  def update_user_account
    update_user = User.find(params[:id])
    user_params = {
      email: params[:email],
      company_name: params[:company_name],
      cellphone: params[:cellphone],
      username: params[:username],
      address: params[:address],
      category: params[:category],
      is_admin: params[:is_admin],
      is_farm_owner: params[:is_farm_owner]
    }

    if update_user.update!(user_params)
      render json: {
        status: :created,
        user: User.all,
      }
    else
      render json: {
        status: 500
      }
    end
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
