Rails.application.routes.draw do
  namespace :api do
    get "/races" => "races#index"

    get "/racewatchlists" => "racewatchlists#index"
    post "/racewatchlists" => "racewatchlists#create"
    delete "/racewatchlists/:id" => "racewatchlists#destroy"

    get "/posts" => "posts#index"

    get "/users" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/workouts" => "workouts#index"
    get "/workouts" => "workouts#show"
    post "/workouts" => "workouts#create"
    delete "/workouts/:id" => "workouts#destroy"

    get "/coordinates" => "coordinates#index"
    get "/coordinates/:id" => "coordinates#show"
    post "/coordinates" => "coordinates#create"

    get "/shoes" => "shoes#index"
    post "/shoes" => "shoes#create"
    patch "/shoes/:id" => "shoes#update"
  end
end
