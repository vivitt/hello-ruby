Rails.application.routes.draw do
  get "/hello", to: "hello#index"
  
  root "tasks#index"
  
  resources :tasks
end
