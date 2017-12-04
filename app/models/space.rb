class Space < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy
  # has_attachments :images, maximum: 4
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :uses, presence: true
  validates :disciplines, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  monetize :price_cents

  private

  def set_user
    User.find(params[:user_id])
  end
end
