class Space < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :reviewspace
  belongs_to :messages
end
