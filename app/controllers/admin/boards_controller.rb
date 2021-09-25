class Admin::BoardsController < ApplicationController
  before_action :require_login

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to boards_path
  end

  private

  def board_params
    params.require(:board).permit(:body, :job, :age)
  end
end
