Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products

  get'/', to: "shopper#index"
  get'/shopper', to: "shopper#index"

  get '/admin', to: 'admin#index'
  get '/login', to: 'access#new'
  post '/access/new', to: 'access#create'
  delete '/logout', to: 'access#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
