Rails.application.routes.draw do
  
  get "/hello", to: "hello#index"
  resources :tareas
  resources :tasks
  
  root "tareas#index"
  
  
end
