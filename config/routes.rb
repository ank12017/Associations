Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
resources :books
resources :auhtors

  
end
