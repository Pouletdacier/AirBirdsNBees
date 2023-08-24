Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"

  resources :birds, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  namespace :renter do
    resource :dashboards, only: [:show]
  end

  namespace :birdlord do
    resource :dashboards, only: [:show]

    resources :birds, only: [:new, :create]

    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
