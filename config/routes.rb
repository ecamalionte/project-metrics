Community::Application.routes.draw do

  get 'signup',    to: 'users#new',        as: 'signup'
  get 'login',     to: 'sessions#new',     as: 'login'
  get 'logout',    to: 'sessions#destroy', as: 'logout'
  get 'dashboard', to: 'dashboard#index',  as: 'dashboard'

  resources :users
  resources :sessions

  resources :projects do
    resources :comments
    resources :votes
  end

  resources :problems do
    resources :comments
    resources :votes
  end

  root "sessions#new"
end
