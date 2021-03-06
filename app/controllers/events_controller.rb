class EventsController < ApplicationController
  before_action :set_space, only: [:new, :show, :create]
  before_action :set_event, only: [:show, :edit, :update]

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def show
  end



  def create
    @event = Event.new(event_params)
    from = params[:event][:from]
    to = params[:event][:to]
    @event.from = Date.strptime(from, "%m/%d/%Y")
    @event_start = @event.from
    @event.to = Date.strptime(to, "%m/%d/%Y")
    @event_finish = @event.to
    number_of_days = ((Date.strptime(to, "%m/%d/%Y") - Date.strptime(from, "%m/%d/%Y")) + 1).to_i
    @event.space = @space

    booking  = Booking.new(spaces_sku: @space.sku, amount: @space.price * number_of_days, state: 'pending')
    booking.user = current_user
    booking.event = @event

    @event.user = current_user
    if @event.save && booking.save
      begin rescue => e
        EventMailer.confirmation(@event).deliver_now
      end
      redirect_to user_path(current_user)
    else
      render "spaces/show"
    end
  end

  def edit
    @event.save
  end

  def update
    if @event.update(event_params)
      redirect_to space_event_path(@event)
    else
      render :edit
    end
  end

  def confirm
    @event = Event.find(params[:event])
    @event.update(confirmation: !@event.confirmation)
    @event.save
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_path(current_user)
  end

private
  def set_space
    @space = Space.find(params[:space_id])
  end

   def set_event
    @event = Event.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def event_params
    params.require(:event).permit(:to, :from, :user_id, :pitch, :space, :name, :publicity, :public, images: [])
  end
end
