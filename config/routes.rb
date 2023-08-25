Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"

  resources :birds, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
    # POUR LA WISHLIST
    resource :wishes, only: [:create, :destroy]
  end

  # Route pour voir la wishlist de l'utilisateur
  get 'wishlist', to: 'users#wishlist', as: :user_wishlist

  namespace :renter do
    resource :dashboards, only: [:show]
  end

  namespace :birdlord do
    resource :dashboards, only: [:show]

    # resources :birds, only: [:new, :create]

    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
