Rails.application.routes.draw do
  get '/lessons', to: "lessons#index"
  get "/lessons/:id", to: "lessons#show"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
end
