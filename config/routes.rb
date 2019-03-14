Rails.application.routes.draw do
  root to: 'home#index'
  get '/search' => 'home#index'

  devise_for :users
  resources :users, only: [:show]

  resources :cities, only: [:index]
  resources :locations, only: [:index, :show] do
    resources :events, only: [:index, :show] do
      resources :reservations, only: [:create]
    end
  end
end
