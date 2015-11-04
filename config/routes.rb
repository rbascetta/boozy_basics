Rails.application.routes.draw do
  root "welcome#index"

  resources :drinks, only: [:new, :create, :destroy, :index, :edit, :show]
  resources :users, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/drinks', to: 'drinks#index'

end
