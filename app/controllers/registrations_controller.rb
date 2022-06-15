class RegistrationsController < Devise::RegistrationsController
  def create
    user = User.create!(
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"],
      company_name: params['company_name'],
      cellphone: params['cellphone'],
      username: params['username'],
      address: params['address']
      category: params['category'],
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: {
        status: 500
      }
    end
  end
end
