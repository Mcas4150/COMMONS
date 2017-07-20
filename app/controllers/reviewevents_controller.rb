class RevieweventsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @reviewevent = Reviewevent.new(reviewevent_params)
    @reviewevent.event = @event
    if @reviewevent.save
      respond_to do |format|
        format.html { redirect_to event_path(@event)}
        format.js
      end
    else
      respond_to do |format|
        format.html {render 'events/show'}
        format.js
      end
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
