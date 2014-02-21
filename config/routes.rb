Domi::Application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :index]
  resource :dashboard, only: [:show]
  root "homes#show", via: :get
  resources :places, only: [:create, :show, :index, :new]
end
