class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island
  validates :date, presence: true
  validates :number_of_guest, presence: true
  validates :check_in_date, presence: true
  validates :checkout_date, presence: true
end
