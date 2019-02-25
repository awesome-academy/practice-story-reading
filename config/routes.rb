Rails.application.routes.draw do
  root "static_pages#show", page: "home"
  resources :stories
end
