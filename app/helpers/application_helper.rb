module ApplicationHelper

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def user_logged_in?
    current_user != nil
  end


  def own_game?
    if
      owns = current_user.owned_games.include?(Game.find(params[:id]))
    end
    owns

  def up_button_class(game)
    vote_class_finder(game, 1)
  end

  def down_button_class(game)
    vote_class_finder(game, -1)
  end

  def vote_class_finder(game, value)
    vote = Vote.find_by(user: current_user, game: game)

    if !user_logged_in?
      "vote-disabled"
    elsif vote && vote.value == value
      "vote-selected"
    else
      "vote-neutral"
    end
  end

end
