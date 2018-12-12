Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :products
  resources :artists
  resource :about

  get 'products', to: 'index#products'
  get 'about', to: 'about#index'
  get 'artists', to: 'artists#artists'

  root 'abouts#index'
end
