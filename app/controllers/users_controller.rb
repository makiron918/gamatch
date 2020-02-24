class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # @users = User.all
    @user = User.find(params[:id])
    @nickname = current_user.nickname
  end

  private
    def user_params
      params.require(:user).permit(:nickname, :image, :email)
    end
end
