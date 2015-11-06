Rails.application.routes.draw do
  root "welcome#index"

  resources :drinks, only: [:new, :create, :destroy, :index, :edit, :update, :show]
  resources :users, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :home, only: [:index]
  get '/login', to: 'sessions#new'
  get '/drinks', to: 'drinks#index'

end
