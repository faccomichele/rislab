Rails.application.routes.draw do
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :device_types
  #get 'console/index'
  root 'console#index', as: 'console_index'

  resources :devices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
