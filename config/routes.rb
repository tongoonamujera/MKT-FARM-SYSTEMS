Rails.application.routes.draw do
  resources :assets
  resources :workshops
  resources :cereal_stores
  resources :stores
  resources :seedbeds
  resources :curings
  resources :barn_and_slate_records
  resources :irriagtion_schedules
  resources :input_calibrations
  resources :land_names
  resources :mkt_payments
  resources :set_seasons
  resources :client_payments
  devise_for :users
  root 'client_payments#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
