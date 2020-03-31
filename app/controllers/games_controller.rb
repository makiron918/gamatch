class GamesController < ApplicationController

  def new
    @game = Game.new
    @game_parent_array = ["---"]
      Game.where(ancestry: nil).each do |parent|
        @game_parent_array << parent.platform
      end
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "ゲーム情報が登録完了しました！"
      redirect_to user_path(current_user.id)
    else
      flash[:error] = "入力に誤りがあります。もう一度入力してください。"
      redirect_to new_game_path
    end
  end

  private
  def game_params
    params.require(:game).permit(:platform)
  end
end

