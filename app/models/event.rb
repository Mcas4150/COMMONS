class Event < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_one :booking
  has_many :reviewevents
  has_many :messages
  has_attachments :images, maximum: 4



  validates :name, presence: true

  after_initialize :init

  def init
    self.public ||= true
  end

  # validates :admission, presence: true


  # validates :public, presence: true



end
