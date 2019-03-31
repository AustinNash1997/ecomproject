# frozen_string_literal: true

Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  devise_for :users
  get 'about/index'
  resources :about
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  resources :products
  root 'products#index'

  get 'category/show'
  get 'category/edit'

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
