Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#create' #home does not work

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]


  get '/login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  resources :posts do# GET, POST, PATCH, DELETE
    resources :comments
  end

  resources :users do
    resources :posts
  end
  
end