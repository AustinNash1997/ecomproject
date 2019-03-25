# frozen_string_literal: true

Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
