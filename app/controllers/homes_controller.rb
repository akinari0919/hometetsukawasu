class HomesController < ApplicationController
  def top
    @board = Board.order("RANDOM()").first
  end
end
