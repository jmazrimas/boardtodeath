class VotesController < ApplicationController


  def create
    value = params[:vote][:value].to_i
    game = Game.find_by_id(params[:id])
    user = User.find_by_id(session[:user_id])

    process_vote(value, game, user)

    redirect_to '/'
  end

  private

  def process_vote(value, game, user)
    vote = Vote.find_by(user: user, game: game)
    if vote && vote.value == value
    elsif vote && vote.value != value
      vote.destroy
    else
      Vote.create(game: game, user: user, value: value)
    end
  end

end
