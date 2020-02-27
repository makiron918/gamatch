class GamesController < ApplicationController
  private
  def game_params
    params.require(:game).permit(:name, :platform)
  end
end
