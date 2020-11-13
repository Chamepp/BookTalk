Rails.application.routes.draw do

  # Main Root
  root 'pages#index', as: 'root'

  # Main Routes
  get 'explore' => 'pages#explore', as: 'explore'

  # SignUp Sources
  get 'signup' => 'registrations#signup', as: 'signup'
  post 'users' => 'registrations#create', as: 'create'


  # Login Sources
  get 'login' => 'sessions#login', as: 'login'
  post 'login' => 'sessions#create', as: 'login-create'
  get 'logout' => 'sessions#destroy', as: 'destroy-login'

end
