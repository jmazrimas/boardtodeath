class CommentsController < ApplicationController
  def new
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def create
    game = Game.find_by_id(params[:id])
    comment = game.comments.new(comment_params)

    if game.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

end
