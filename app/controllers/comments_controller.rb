class CommentsController < ApplicationController
  def new
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def create
    comment = Comment.new(
      content: params[:comment][:content],
      game_id: params[:game_id],
      user_id: session[:user_id]
      )

    if comment.save
      redirect_to "/games/#{params[:game_id]}"
    else
      redirect_to :back
    end

  end

end
