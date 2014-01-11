Community::Application.routes.draw do

  resources :groups

  get 'signup',    to: 'users#new',        as: 'signup'
  get 'login',     to: 'sessions#new',     as: 'login'
  get 'logout',    to: 'sessions#destroy', as: 'logout'

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

  get 'dashboard', to: 'dashboard#index', as: 'dashboard_index'
  root "dashboard#welcome"
end
