Rails.application.routes.draw do
  devise_for :users
  root to: 'gyms#index'
  resources :users, only: [:show]
  get "gyms/chibacity"

  resources :gyms
end
