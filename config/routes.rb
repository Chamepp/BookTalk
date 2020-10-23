Rails.application.routes.draw do

  # Main Root
  root 'pages#index', as: 'root'

  # Routes
  get 'explore' => 'pages#explore', as: 'explore'
  get 'signup' => 'pages#signup', as: 'signup'
  get 'login' => 'pages#login', as: 'login'

end
