class Event < ApplicationRecord

  belongs_to :space
  belongs_to :user
  has_many :reviewevents
  has_attachments :images, maximum: 4

  validates :name, presence: true
  # validates :admission, presence: true


  # validates :public, presence: true



end
