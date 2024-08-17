Rails.application.routes.draw do
  root to: 'pages#home'

  resources :vehicles, only: [:index, :new, :create]

  resources :reports do
    put :sort, on: :collection
  end

  get 'search', to: 'vehicles#search', as: 'search'
  get 'search_results', to: 'vehicles#search_results', as: 'search_results'
  get 'customers_report', to: 'vehicles#customer_report', as: 'customer_report'
  get 'odometer_report', to: 'vehicles#odometer_report', as: 'odometer_report'
end
