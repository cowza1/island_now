class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island
  has_one_attached :photo
  validates :number_of_guest, presence: true
  validates :check_in_date, presence: true
  validates :checkout_date, presence: true
end
