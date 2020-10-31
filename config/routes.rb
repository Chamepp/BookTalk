Rails.application.routes.draw do

  # Main Root
  root 'pages#index', as: 'root'

  # Main Routes
  get 'explore' => 'pages#explore', as: 'explore'
  get 'signup' => 'pages#signup', as: 'signup'
  get 'login' => 'sessions#login', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'destroy-login'

  # Authentication Routes
  post 'users' => 'pages#create', as: 'create'
  post 'login' => 'sessions#create', as: 'login-create'


end
