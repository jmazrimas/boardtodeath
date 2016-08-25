Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'games#index'

  get '/' => "games#index"

  resources :games

  # Commented out to fix merge conflict
  # _____________________________________
  # get '/games/:id' => "games#show", as: "game"
  # post '/games' => "games#create"



  delete '/sessions' => "sessions#delete"

  resources :users
  resources :sessions
  resources :comments
end
