class FriendshipsController < ApplicationController

  def new

  end

  def create

    if !session[:user_id]
      redirect_to '/sessions/new'
    else

      friend_request = Friendship.find_or_initialize_by(friend_params)
      if friend_request.save
        redirect_to user_path(friend_request.friend.id)
      else
        @errors = 'Unable to request friend'
        redirect_to user_path(friendship[user])
      end
    end
  end

  private

  def friend_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

end
