Rails.application.routes.draw do
  root to: 'experiments#index'

  resources :users

  get 'users/login'
  post 'users/login'
  delete 'users/logout'

  resources :experiments
  resources :sessions, only: [:index, :new, :create, :delete]

end
