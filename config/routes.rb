Rails.application.routes.draw do
  get 'seasonal_inputs_usage_to_date/index'
  resources :farm_names
  resources :home
  resources :input_stores_usages do
    get :bin, on: :member
    put :delete_records, on: :member
    put :restore_records, on: :member
  end
  resources :timebooks do
    match '/new', to: 'timebooks#new_timebooks', via: :post, on: :collection
  end
  resources :employees
  resources :tobacco_sales
  resources :rentals
  resources :purchases
  resources :field_days
  resources :harvestings
  resources :rationings
  resources :users
  resources :rainfalls
  resources :deliveries
  resources :cash_requisitions
  resources :daily_requisitions
  resources :activities
  resources :cereal_sales
  resources :calenders
  resources :advertisements
  resources :weathers
  resources :cashflows
  resources :deduction_tables
  resources :wages
  resources :equipment_services
  resources :assets, path: 'my_assets'
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
  resources :set_seasons do
    put :deactivate_season, on: :member
    put :activate_season, on: :member
  end
  resources :client_payments
  devise_for :users, :path_prefix => 'my'
  root 'activities#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
