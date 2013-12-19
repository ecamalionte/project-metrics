Community::Application.routes.draw do
  resources :projects

  root "dashboard#index"
end
