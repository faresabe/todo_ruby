Rails.application.routes.draw do
  #get "users/new"
  #get "users/create"
  get "/sign_up", to: "users#new", as: :sign_up
  post "/sign_up", to: "users#create"

  resource :session
  resources :passwords, param: :token
  root "sessions#new"

  resources :tasks


  get "up" => "rails/health#show", as: :rails_health_check

  
end
