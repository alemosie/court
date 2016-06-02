class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    @hands = @game.hands
  end
  

end
