Rails.application.routes.draw do
  resources :items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root 'pages#home'
#   get 'pages/home', to: 'pages#home'
  get 'login', to: 'pages#new'
  post 'login', to: 'pages#create'
  get 'deal', to: 'pages#deal'
  delete 'logout', to: 'pages#destroy'
  
  get 'signup', to:'users#new'
  
  get 'pages/index', to: 'pages#index'
  post 'users', to: 'users#create'
  
  # resources 'pages'
end
