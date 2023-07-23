Rails.application.routes.draw do
  # Vehicle Verifications
  resources :vehicle_verifications do
    get 'report', on: :collection, as: 'vehicle_verification_report'
  end

  # Rental Vehicles
  resources :rental_vehicles

  # Accident Reports
  resources :accident_reports

  # Job Cards
  resources :job_cards

  # Licence Administrations
  resources :licence_administrations

  # Efuel Managements
  resources :efuel_managements

  # Help Desk Tickets
  resources :help_desk_tickets

  # Tracking Units
  resources :tracking_units

  # Traffic Fines
  resources :traffic_fines

  # Maintenances
  resources :maintenances

  # Vehicles
  resources :vehicles do
    collection do
      get 'search'
      get 'search_results'
      get 'customer_report'
      get 'odometer_report'
    end
  end

  # Root route
  root to: 'pages#home'
end
