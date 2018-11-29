Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :products

  get 'products', to: 'index#products'
  get 'about', to: 'artists#about'
  get 'artists', to: 'artists#artists'

  root 'products#index'
end
