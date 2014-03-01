Domi::Application.routes.draw do
  resources :images

  get "searches/show"
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :index]
  resource :dashboard, only: [:show, :new]
  root "homes#show", via: :get
  resource :homes, only: [:index, :show]
  resources :places, only: [:create, :show, :index, :new]
end
