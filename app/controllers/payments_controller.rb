class PaymentsController < ApplicationController
  before_action :set_booking

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    current_user.update(stripe_id: customer.id)

    charge = Stripe::Charge.create(
      customer:     current_user.stripe_id,   # You should store this customer id and re-use it.
      amount:       @booking.amount_cents, # or amount_pennies
      description:  "Payment for your event #{@booking.spaces_sku} for booking #{@booking.id}",
      currency:     @booking.amount.currency
    )

    @booking.update(payment: charge.to_json, state: 'paid')
    redirect_to events_path()

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to space_event_path(@booking.event.space, @booking.event)
  end

  private

  def set_booking
    @booking = Booking.where(state: 'pending').find(params[:booking_id])
  end
end
