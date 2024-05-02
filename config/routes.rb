Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :characters, only: %i[new create index show] do
    resources :bookings, except: %i[index show]
  end

  resources :bookings, except: %i[index show] do
    resources :reviews, only: %i[new create]
  end
  devise_for :users
  root to: "pages#home"

  get 'dashboard', to: 'dashboards#index'
end
