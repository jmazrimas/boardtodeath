class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/users/new'
    end
  end

  def show
    user = User.find_by_id(session[:user_id])
    friend = User.find_by_id(params[:id])
    @friendship = Friendship.find_or_initialize_by(user: user, friend: friend)
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
