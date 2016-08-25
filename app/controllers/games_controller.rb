class GamesController < ApplicationController

  before_action :require_login, only: [:create]

  def index
    @game = Game.new
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    user = User.find_by_id(session[:user_id])
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

  private

  def game_params
    params.require(:game).permit(:title)
  end


  def require_login
    unless session[:user_id]
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path
    end
  end


end
