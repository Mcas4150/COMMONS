class Space < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :reviewspace
  has_attachment :images
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :category, presence: true

end
