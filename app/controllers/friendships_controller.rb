class FriendshipsController < ApplicationController

  def new

  end

  def create

    if !session[:user_id]
      redirect_to '/sessions/new'
    else

      friend_request = Friendship.find_or_initialize_by(friend_params)
      if friend_request.save
        redirect_back fallback_location:  "/"
        # redirect_to user_path(friend_request.friend.id)
      else
        @errors = 'Unable to request friend'
        redirect_back fallback_location:  "/"
        # redirect_to user_path(friendship[user])
      end
    end
  end

  def destroy
    friendship = Friendship.find_by(friend_params)
    inverse_friendship = Friendship.find_by(user: friendship.friend, friend: friendship.user)
    friendship.destroy
    inverse_friendship.destroy if inverse_friendship
    redirect_back fallback_location:  "/"
  end

  private

  def friend_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

end
