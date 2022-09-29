Rails.application.routes.draw do
  resources :islands
  resources :pirates
  #get 'home/index'
  get "home/tchum"
  # get “home/island”
  root "home#index"

end
