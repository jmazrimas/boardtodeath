class OwnershipsController < ApplicationController

  def new
    @ownership = Ownership.new
  end

  def create
    ownership = Ownership.find_or_initialize_by(ownership_params)
    if ownership.save
       redirect_to "/users/#{session[:user_id]}"
    else
       redirect_to "/"
    end
  end

  def show
  end

  def destroy
    # render plain: params.inspect
    ownership = Ownership.find_by_id(params[:id])
    game = ownership.owned_game
    ownership.destroy

    redirect_to game_path(game)
  end


  private

  def ownership_params
    params.require(:ownership).permit(:owner_id, :owned_game_id)
  end

end
