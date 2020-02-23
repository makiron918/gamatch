class TopsController < ApplicationController
  def index
    @user = User.all
  end
end
