Rails.application.routes.draw do
  devise_for :users
  root to: "chef#index"
  resources :users, only: [:new, :create]
  resources :chef do
    resources :bookings, only: [:show, :index, :new, :create, :destroy]
    resources :reviews, only: [:index, :new, :create, :destroy]
  end
end
