Rails.application.routes.draw do


  # Set Views/Home/index is the main page
  resources :subscribers
  root 'home#index'
  get 'subscribers/index'
  get 'home', to: 'home#index'
  get 'services', to: 'home#services'
  get 'team', to: 'home#team'
  get 'careers', to: 'home#careers'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'

end
