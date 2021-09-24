class BoardsController < ApplicationController
  
  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end
  
  def index
    @boards = Board.all
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

  private

  def board_params
    params.require(:board).permit(:image)
  end
end
