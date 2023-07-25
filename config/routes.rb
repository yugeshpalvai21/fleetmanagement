Rails.application.routes.draw do
  # Dashboard
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

  # Vehicle Verifications
  resources :vehicle_verifications do
    get 'report', on: :collection, as: 'vehicle_verification_report'
  end

  # Asset Management
  resources :assets

  # Logistics or Movement of Goods
  resources :shipments

  # Waste Management System
  resources :wastes

  # Manage workshops
  resources :workshops, only: [:index, :create, :update, :destroy]

  # Manage insurance
  resources :insurances, only: [:index, :create, :update, :destroy]

  # Manage rentals
  resources :rentals, only: [:index, :create, :update, :destroy]

  # Rental Vehicles
  resources :rental_vehicles

  # Accident Reports
  resources :accidents do
    resources :accident_reports # Add this route for managing accident reports
  end

  # Job Cards
  resources :job_cards

  # Licence Administrations
  resources :licence_administrations

  # Efuel Managements
  resources :efuel_managements

  # Help Desk Tickets
  resources :tickets

  # Tracking Units
  resources :tracking_units do
    member do
      get 'show_tracking' # Add this route for real-time tracking of a specific tracking unit
    end
  end

  # Geofences
  resources :geofences, only: [:index, :create] # Add geofences routes

  # Traffic Fines
  resources :traffic_fines

  # Maintenances
  resources :maintenances

  # Vehicles
  resources :vehicles do
    collection do
      get 'search'
      get 'search_results'
      get 'customer_report', to: 'vehicles#customer_report', as: 'customer_report' # Define the route here
      get 'odometer_report', to: 'vehicles#odometer_report', as: 'odometer_report' # Define the route here
    end
    member do
      post 'calculate_fuel_consumption' # Add this route to calculate fuel consumption for a specific vehicle
    end
  end

  # Root route
  root to: 'pages#home'
end
