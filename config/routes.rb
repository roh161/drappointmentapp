Rails.application.routes.draw do
  root  to: 'home#index'
  resources :users
  # resources :users,:only => [:new, :create,:destroy]
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/password',
    registrations: 'users/registrations'
  }
end
