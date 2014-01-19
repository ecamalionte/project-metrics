Community::Application.routes.draw do

  resources :invitations

  resources :groups

  get 'signup/:invitation_token',    to: 'users#new',        as: 'signup'
  get 'login',     to: 'sessions#new',     as: 'login'
  get 'logout',    to: 'sessions#destroy', as: 'logout'


  resources :users
  resources :sessions

  resources :projects do
    resources :comments
    resources :votes
    get 'statistics', to: 'votes#statistics', as: 'projects_votes_statistics'
  end

  resources :problems do
    resources :comments
    resources :votes
    get 'statistics', to: 'votes#statistics', as: 'problem_votes_statistics'
  end

  get 'dashboard', to: 'dashboard#index', as: 'dashboard_index'
  root "dashboard#welcome"
end
