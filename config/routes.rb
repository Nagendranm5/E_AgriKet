Rails.application.routes.draw do
  resources 'users'
  get 'users_list', to: 'users#users_list', as: 'users_list'
  resources :sessions, only: [:new, :create, :destroy]
  get 'delete_user', to: 'users#delete_user', as: 'delete_user'
  get 'signin', to: 'sessions#create', as: 'signin'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'signup', to: 'users#signup', as: 'signup'
  root 'users#users_list'
end
