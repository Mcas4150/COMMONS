class Space < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :reviewspace
  belongs_to :messages

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  has_attachment :photo
  validates :images, presence: true
  validates :description, presence: true
  valdiates :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?


end
