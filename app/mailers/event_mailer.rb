class EventMailer < ApplicationMailer
  def confirmation
    user = User.first
    EventMailer.confirmation(user)
  end
end
