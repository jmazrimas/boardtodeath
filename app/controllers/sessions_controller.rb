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
    if !user
      @errors = ["Email not recognized"]
      render 'new'
    elsif user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      @errors = ["Unable to log in"]
      render 'new'
    end
  end

end
