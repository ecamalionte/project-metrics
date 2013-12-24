Community::Application.routes.draw do

  resources :projects do
    resources :comments
  end

  resources :problems do
    resources :comments
  end

  root "dashboard#index"
end
