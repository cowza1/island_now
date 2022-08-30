class Island < ApplicationRecord
  has_many :islands
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
