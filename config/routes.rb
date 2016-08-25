Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'games#index'

  get '/' => "games#index"

  get '/games/:id/comments' => 'comments#new', as: :new_comment
  # post '/games/:id/comments' => 'comments#create', as: :create_comment

  resources :games do
    resources :comments
  end

  # Commented out to fix merge conflict
  # _____________________________________
  # get '/games/:id' => "games#show", as: "game"
  # post '/games' => "games#create"



  delete '/sessions' => "sessions#delete"

  resources :users
  resources :sessions

  post '/games/:id/votes' => 'votes#create', as: "game_votes"

  resources :tags

end
