class BoardsController < ApplicationController
  
  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to index_path
    else
      render :new
    end
  end
  
  def index
    @board = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def challenge; end

  def check; end

  private

  def board_params
    params.require(:board).permit(:image)
  end 
end
