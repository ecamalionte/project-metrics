Community::Application.routes.draw do

  resources :projects do
    resources :comments
  end

  resources :problems

  root "dashboard#index"
end
