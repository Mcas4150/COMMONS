class Booking < ApplicationRecord
  monetize :amount_cents
  belongs_to :user
  belongs_to :event
end
