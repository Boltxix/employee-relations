Rails.application.routes.draw do
  devise_for :users
  resources :employees
  resources :users
  get 'home/about'
  get 'home/dashboard'
  root 'home#index'
end
