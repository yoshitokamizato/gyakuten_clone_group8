Rails.application.routes.draw do
  devise_for :users
  root to: 'movies#index'
  resources :texts, only: [:index, :show]
  resources :questions, only: [:index, :create, :show] do
    resources :solutions, only: :create
  end
end
