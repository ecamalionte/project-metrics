Community::Application.routes.draw do
  resources :problems

  resources :projects

  root "dashboard#index"
end
