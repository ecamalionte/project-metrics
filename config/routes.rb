Community::Application.routes.draw do


  resources :projects do
    resources :comments
    resources :votes
  end

  resources :problems do
    resources :comments
    resources :votes
  end

  root "dashboard#index"
end
