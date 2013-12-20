Community::Application.routes.draw do
  resources :projectts

  resources :problems

  root "dashboard#index"
end
