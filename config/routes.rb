Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/' => "games#index"

  get '/games/:id' => "games#show", as: "game"
  # resources :games

  resources :users
  resources :sessions
end
