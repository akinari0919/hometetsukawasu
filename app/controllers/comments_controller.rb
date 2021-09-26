class CommentsController < ApplicationController
  def new
    @board = Board.find(params[:board_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to board_path(@comment.board_id), success: "登録ありがとうございます！"
    end
  end

  def index
    @boards = Board.all
    @comments = Comment.all.order(created_at: :desc)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy!
    redirect_to board_path(@comment.board_id)
  end

  def renew
    @board = Board.order("RANDOM()").first
    redirect_to new_board_comment_path(@board)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :name).merge(board_id: params[:board_id])
  end 
end
