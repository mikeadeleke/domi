Domi::Application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :index]
  resource :dashboard, only: [:show, :new]
  root "homes#show", via: :get
  resource :homes, only: [:index, :show]
  resources :places, only: [:create, :show, :index]
end
