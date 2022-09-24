Rails.application.routes.draw do
  resources :pirates
  #get 'home/index'
  get "home/tchum"
  root "home#index"
end
