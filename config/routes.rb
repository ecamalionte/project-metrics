Community::Application.routes.draw do
  resources :projects

  resources :problems

  root "dashboard#index"
end
