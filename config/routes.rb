Rails.application.routes.draw do
  root to: 'experiments#index'
  get 'users/login', :to => 'sessions#new'
  post 'users/login'
  delete 'users/logout'


  resources :users



  resources :experiments
  resources :sessions, only: [:index, :new, :create, :delete]

end
