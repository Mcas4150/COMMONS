class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if current_user == @user
      @event = current_user.events.last
    end
  end

  def index
    @users = User.all
  end
end
