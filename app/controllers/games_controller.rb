class GamesController < ApplicationController
  private
  def game_params
    params.require(:game).permit(:platform)
  end
end
