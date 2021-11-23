Rails.application.routes.draw do
  devise_for :users
  root to: "chefs#index"
  # resources :users, only: [:new, :create]
  resources :chefs do
    resources :bookings, only: [:index, :new, :create]
    resources :reviews, only: [:index, :new, :create, :destroy]
  end
  resources :bookings, only: [:destroy, :show]
end
