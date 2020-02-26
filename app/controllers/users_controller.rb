class UsersController < ApplicationController
  before_action :authenticate_user!, only: :about
  def index
    @users = User.all
  end

  def show
    # @users = User.all
    @user = User.find(params[:id])
    @nickname = current_user.nickname
  end

  def search
    @users = User.search(params[:keyword])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def about
    @user = User.find(params[:id])
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:nickname, :image, :email, :age, :sex, :intro, :voice)
    end
end
