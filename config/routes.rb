Rails.application.routes.draw do
  namespace :api do
    get "/races" => "races#index"

    get "/racewatchlists" => "racewatchlists#index"

    get "/users" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
