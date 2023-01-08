Rails.application.routes.draw do
  get 'doctor/new'
  get 'doctor/index'
  root  to: 'home#index'
  post '/admin', to: 'admin#create'
  get '/admin', to: 'admin#index'
  post '/users', to: 'users#create'
  resources :admin
  resources 'users' do
    resources 'appointment'
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/password',
    registrations: 'users/registrations'
  }
end
