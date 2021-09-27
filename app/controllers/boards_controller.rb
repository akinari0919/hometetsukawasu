class BoardsController < ApplicationController

  def index
    @boards = Board.all.order(created_at: :desc)
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to board_path(@comment.board_id), success: "登録ありがとうございます！"
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy!
    redirect_to boards_path
  end

  def show
    @board = Board.find(params[:id])
    @comments = @board.comments.order(created_at: :desc)
  end

  private

  def comment_params
    params.permit(:body, :name, :board_id)
  end 
end
