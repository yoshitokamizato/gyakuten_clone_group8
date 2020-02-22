Rails.application.routes.draw do
  devise_for :users
  root to: 'movies#index'
  resources :texts, only: [:index, :show]
end
