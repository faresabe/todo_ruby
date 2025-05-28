Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  root "tasks#index"
  resources :tasks


  get "up" => "rails/health#show", as: :rails_health_check

  
end
