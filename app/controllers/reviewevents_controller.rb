class RevieweventsController < ApplicationController
end

  def create
    @event = Event.find(params[:event_id])
    @reviewevent = Reviewevent.new(reviewevent_params)
    @reviewevent.event = @event
    if @reviewevent.save
      redirect_to event_path(@event)
    else
      render 'events/show'
    end
  end

  def show
    @event = Event.find(params[:id])
    @reviewevent = Reviewevent.new  # <-- You need this now.
  end

  private

  def reviewevent_params
    params.require(:reviewevent).permit(:content)
  end
end
