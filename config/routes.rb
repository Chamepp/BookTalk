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
  get 'admin' => 'admin#admin', as: 'admin'
  post 'admin' => 'admin#create', as: 'admin_login'
  get 'admin/logout' => 'admin#destroy', as: 'admin_destroy_login'
  get 'admin/dashboard' => 'administration#dashboard', as: 'dashboard'
  get 'admin/dashboard/products' => 'administration#control_products', as: 'control_product'
  get 'admin/dashboard/customers' => 'administration#control_customers', as: 'control_customers'

  # Creation Sources
  post 'admin/dashboard/products' => 'cards#create'
  get 'cards' => 'cards#show'
  get 'cards' => 'cards#edit', as: 'card_edit'
  get 'cards' => 'cards#destroy', as: 'card_delete'
  put 'cards' => 'cards#update', as: 'card_update'

  resources :cards do
    resources :comments
  end

end

