class Island < ApplicationRecord
  has_many :bookings
  has_many_attached :photos
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
