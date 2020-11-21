Rails.application.routes.draw do

  # Main Root
  root 'pages#index', as: 'root'

  # Main Routes
  get 'explore' => 'pages#explore', as: 'explore'
  get 'about' => 'pages#about', as: 'about'

  # SignUp Sources
  get 'signup' => 'registrations#signup', as: 'signup'
  post 'users' => 'registrations#create', as: 'create'


  # Login Sources
  get 'login' => 'sessions#login', as: 'login'
  post 'login' => 'sessions#create', as: 'login-create'
  get 'logout' => 'sessions#destroy', as: 'destroy-login'

  # Admin Sources
  get 'admin' => 'administration#administration', as: 'admin'
  get 'admin/products' => 'administration#control_products', as: 'control_product'
  get 'admin/customers' => 'cards#control_customers', as: 'control_customers'
  post 'admin/products' => 'cards#create'
  get 'cards' => 'cards#show'



  resources :cards

end
