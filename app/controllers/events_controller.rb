class EventsController < ApplicationController
  before_action :set_space, only: [:new, :show, :create]

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def show
  end



  def create
    @event = Event.new
    from = params[:event][:from]
    to = params[:event][:to]
    @event.from = Date.strptime(to, "%m/%d/%Y")
    @event.to = Date.strptime(to, "%m/%d/%Y")
    @event.space = @space
    # @event.user = current_user

    if @event.save
      redirect_to events_path
    else
      render "spaces/show"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path(@event)
  end

private
  def set_space
    @space = Space.find(params[:space_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def event_params
    params.require(:event).permit(:to, :from)
  end
end
