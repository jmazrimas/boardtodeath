class FriendshipsController < ApplicationController

  def new

  end

  def create
    if !session(:user_id)
      render 'session#new'
    end
    friend_request = Friendship.find_or_initialize_by(friend_params)
    if friend_request.save
      redirect_to user_path(friendship[user])
    else
      @errors = 'Unable to request friend'
      redirect_to user_path(friendship[user])
    end
  end

  private

  def friend_params
    params.require(:friendship).permit(:user, :friend)
  end

end
