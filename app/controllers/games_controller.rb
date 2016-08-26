class GamesController < ApplicationController

  before_action :require_login, only: [:create]

  def index
    @vote = Vote.new
    @game = Game.new
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    user = User.find_by_id(session[:user_id])
    @ownership = Ownership.new
    @comment = @game.comments
    @tags = @game.tags
    # @ownership(owned_game: @game, owner: current_user)
  end

  def create
    user = User.find_by_id(session[:user_id])
    game = user.games.new(game_params)

    if game.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def edit
    @game = Game.find(params[:id])
    if current_user && current_user.id == @game.user.id
    else
      redirect_to root_path
    end
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(game_params)
      redirect_to @game
    else
      redirect_to :back
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :initial_tags, :description, :age_range, :num_players, :play_time, :image )
  end


  def require_login
    unless session[:user_id]
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path
    end
  end


end
