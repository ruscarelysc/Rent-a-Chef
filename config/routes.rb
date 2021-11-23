Rails.application.routes.draw do
  devise_for :users
  root to: "chefs#index"
  # resources :users, only: [:new, :create]
  resources :chefs do
    resources :bookings, only: [:show, :index, :new, :create, :destroy]
    resources :reviews, only: [:index, :new, :create, :destroy]
  end
end
