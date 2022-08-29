Rails.application.routes.draw do
  get '/lessons', to: "lessons#index"
  get "/lessons/:id", to: "lessons#show"
  get "/get_lessons/:id", to: "users#get_lessons_by_id"
  get "/get_stages/:id", to: "lessons#get_stages_by_id"
  get "/get_stages/:lesson_id/:stage_id",  to: "lessons#get_stages_by_id"
  get '/stages', to: "stages#index"
  get "/stages/:id", to: "stages#show"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  patch "/lessons/:id", to: "lessons#update"
  patch "/users/:id", to: "users#update"
end
