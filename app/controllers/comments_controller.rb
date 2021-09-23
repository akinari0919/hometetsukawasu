class CommentsController < ApplicationController
  def new
    @board = Board.find(params[:board_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to board_path(@comment.board_id)
  end

  def destroy

  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(board_id: params[:board_id])
  end 
end
