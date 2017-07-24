class MessagesController < ApplicationController


  # def index
  #   @messages = Message.all
  #   @new_message = current_user.messages.build
  # end

  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    if @message.save
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
    @message = Message.new
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
