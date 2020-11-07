Rails.application.routes.draw do
  devise_for :users
  root to: 'gyms#index'
  resources :users, only: [:show]
  get "gyms/chibacity"

  resources :gyms
  post "contacts/thanks"
  resources :contacts, only: [:new, :create]
end
