Rails.application.routes.draw do
  get 'category/index'
  get 'category/show'
  get 'category/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
