class OwnershipsController < ApplicationController

  def new
    @ownership = Ownership.new
  end

  def create
    user = User.find_by_id(session[:user_id])
    ownership = user.own
    if ownership.save
      redirect_to
    else
      redirect_to
    end
  end

  def show
  end

  private

  def user_params
  end

end
