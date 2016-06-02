class HomeController < ApplicationController
  def index
    redirect_to games_path
  end

  def info
  end
end
