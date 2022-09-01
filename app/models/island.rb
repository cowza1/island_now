class Island < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
  include PgSearch::Model
    pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
