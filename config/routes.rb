Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :plants, only: [:create, :destroy]
  resources :notes, only: [:create, :destroy]
  get '/autologin', to: 'auth#create'
  post 'login', to: 'auth#login'
end
