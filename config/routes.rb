Rails.application.routes.draw do
  resources :set_seasons
  resources :client_payments
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
