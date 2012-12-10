Tasks::Application.routes.draw do

  resources :lists do
    resources :tasks
  end

  devise_for :users

  root to: "lists#index"
end
