Rails.application.routes.draw do

root to: "users#index"

# users routes

get "/users" => "users#index"

 get "/users/:id" => "users#show"

 get "/user/new" => "users#new"

 post "/users" => "users#create"

 get "user/login" => "users#login"

 post "/user/login" => "users#process_login"

# timelines routes

get "/timelines" => "timelines#index"

get "/timelines/:id" => "timelines#show", as: :timeline

get "/timelines/:id/edit" => "timelines#edit", as: :edit_timeline

#Look up what patch does...
patch "/timelines/:id" => "timelines#update"

post "/timelines" => "timelines#create"



end
