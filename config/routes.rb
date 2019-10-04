Rails.application.routes.draw do
  resources :items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root 'pages#home'
#   get 'pages/home', to: 'pages#home'
  get 'pages/login', to: 'pages#login'
  
end
