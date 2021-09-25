class BoardsController < ApplicationController

  def index
    @boards = Board.all.order(created_at: :desc)
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

  def check
    @board = Board.find(params[:id])
  end
end
