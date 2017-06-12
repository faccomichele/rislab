Rails.application.routes.draw do
  #get 'console/index'
  root 'console#index', as: 'console_index'

  resources :devices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
