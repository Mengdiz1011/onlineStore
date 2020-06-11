Rails.application.routes.draw do
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products

  get'/', to: "shopper#index"
  get'/shopper', to: "shopper#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
