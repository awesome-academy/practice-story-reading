Rails.application.routes.draw do
  root "static_pages#show", page: "home"
  get "/login", to: "sessions#new"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :stories
  resources :chapters
  resources :categories
end
