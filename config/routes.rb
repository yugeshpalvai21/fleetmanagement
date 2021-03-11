Rails.application.routes.draw do
  root to: 'pages#home'
  resources :vehicles
  get 'search', to: 'vehicles#search', as: 'search'
  get 'search_results', to: 'vehicles#search_results', as: 'search_results'
end
