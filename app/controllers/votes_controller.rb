class VotesController < ApplicationController


  def create
    value = params[:vote][:value].to_i
    @game = Game.find_by_id(params[:id])
    user = User.find_by_id(session[:user_id])

    @vote = process_vote(value, @game, user)

    respond_to do |format|
      format.html { redirect_back fallback_location:  "/" }
      format.js {}
    end

  end

  private

  def process_vote(value, game, user)
    vote = Vote.find_by(user: user, game: game)
    if vote && vote.value == value
    elsif vote && vote.value != value
      vote.destroy
    else
      vote = Vote.create(game: game, user: user, value: value)
    end
    vote
  end

end
