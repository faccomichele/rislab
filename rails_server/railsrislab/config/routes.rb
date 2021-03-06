Rails.application.routes.draw do
  resources :actual_volumes
  get 'calendar/index'

  resources :orders
  resources :line_items
  resources :carts
  resources :template_volumes
  resources :os_types
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'calendar' => 'calendar#index'

  resources :users
  resources :device_types
  #get 'console/index'
  root 'console#index', as: 'console_index'

  resources :devices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
