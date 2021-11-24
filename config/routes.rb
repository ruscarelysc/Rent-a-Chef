Rails.application.routes.draw do
  devise_for :users
  root to: "chefs#home"
  # resources :users, only: [:new, :create]
  resources :chefs do
    resources :bookings, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
    resources :reviews, only: [:index, :destroy]
  end
  resources :bookings, only: [:index, :destroy, :show]
end
