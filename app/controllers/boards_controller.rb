class BoardsController < ApplicationController
  
  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      binding.pry
      redirect_to index_path
    else
      render :new
    end
  end
  
  def index; end

  def show; end

  def challenge; end

  def check; end

  private

  def board_params
    params.require(:board).permit(:image)
  end 
end
