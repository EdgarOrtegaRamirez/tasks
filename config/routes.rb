Tasks::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  
  resources :lists do
    resources :tasks
  end

  devise_for :users

  root to: "lists#index"
end
