class Event < ApplicationRecord

  belongs_to :space
  belongs_to :user
  # has_many :reviewevent
  # validates :name, presence: true
  # validates :admission, presence: true


  # validates :public, presence: true



end
