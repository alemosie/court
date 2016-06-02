class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    @hands = @game.hands
  end

  def index
    @games = Game.all
  end

  def new
    
  end

  
  

end
