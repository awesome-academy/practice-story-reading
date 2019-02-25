Rails.application.routes.draw do
  get "user/new"
  get "user/show"
  root "static_pages#show", page: "home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users
  resources :stories
end
