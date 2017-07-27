class EventMailer < ApplicationMailer
  def confirmation(event)
    @event = event
     mail(
      to:       @event.user.email,
      subject:  "Event #{@event.space.user} created!"
    )
  end
end
