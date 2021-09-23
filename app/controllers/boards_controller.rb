class BoardsController < ApplicationController
  
  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to boards_path
  end
  
  def index
    @board = Board.all
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy!
    redirect_to boards_path
  end

  def show
    @board = Board.find(params[:id])
  end

  def check
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:image)
  end 
end
