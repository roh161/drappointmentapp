Rails.application.routes.draw do
  root  to: 'home#index'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'new_user'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/password',
    registrations: 'users/registrations'
  }
end
