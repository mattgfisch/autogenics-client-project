Rails.application.routes.draw do
  resources :experiments
  resources :sessions, only: [:index, :new, :create]
end
