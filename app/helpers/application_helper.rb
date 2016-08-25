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
  end

end
