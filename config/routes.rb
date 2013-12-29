Community::Application.routes.draw do


  resources :projects do
    resources :comments
    resources :votes
  end

  resources :problems do
    resources :comments
    resources :votes
  end

  get 'dashboard' => 'dashboard#index', as: 'dashboard_index'
  root "dashboard#welcome"
end
