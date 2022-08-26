Rails.application.routes.draw do
  get '/lessons', to: "lessons#index"
  get "/lessons/:id", to: "lessons#show"
  get '/stages', to: "stages#index"
  get "/stages/:id", to: "stages#show"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  patch "/lessons/:id", to: "lessons#update"
end
