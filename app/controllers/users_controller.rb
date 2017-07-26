class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
    @events = Event.all
    if current_user == @user
      @event = current_user.events.last
    end
  end


end
