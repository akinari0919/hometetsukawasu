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

end
