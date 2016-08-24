class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def delete
    session[:user_id]=nil
    redirect_to '/'
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

end
