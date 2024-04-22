Rails.application.routes.draw do
  resources :cars, :sensor_logs, :plants, :plant_containers, :sensors, :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Session routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  post 'login', to: 'sessions#destroy'

  # Defines the root path route ("/")
  root "sensor_logs#index"
end
