Rails.application.routes.draw do
  get 'doctor/index'
  root  to: 'home#index'
  post '/admin', to: 'admin#create'
  get '/admin', to: 'admin#index'
  post '/user', to: 'user#create'
  resources :admin 
  resources :appointment
  post '/appointment', to: 'appointment#create'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/password',
    registrations: 'users/registrations'
  }
end
