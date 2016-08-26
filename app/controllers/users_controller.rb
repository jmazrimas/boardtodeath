class UsersController < ApplicationController
  include ApplicationHelper

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      puts '!!!!!!!!!!!!!!! i didnt save'

      @errors = user.errors.full_messages
      render :new
    end
  end

  def show
    if user_logged_in?
      user = User.find_by_id(session[:user_id])
      friend = User.find_by_id(params[:id])
      @friendship = Friendship.find_or_initialize_by(user: user, friend: friend)
      @user = User.find(params[:id])
    else
      redirect_to '/sessions/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
