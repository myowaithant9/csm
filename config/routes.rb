Rails.application.routes.draw do


  # Set Views/Home/index is the main page
  resources :subscribers
  root 'home#index'
  get 'subscribers/index'
  get 'home/index', to: 'home#index'

end
