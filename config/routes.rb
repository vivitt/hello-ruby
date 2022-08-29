Rails.application.routes.draw do
  root "tasks#index"
  get "/hello", to: "hello#index"
  resources :tasks
end
