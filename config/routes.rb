Domi::Application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resource :dashboard, only: [:show]
  root "homes#show", via: :get
  resources :places, only: [:create, :show]
end
