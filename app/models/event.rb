class Event < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_many :reviewevent
  validates :name, presence: true
  validates :admission, presence: true
  has_attachment :photo
  validates :photo, presence: true
  validates :description, presence: true
  validates :public, presence: true

end
