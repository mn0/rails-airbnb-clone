class StorageSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
  validates :space, presence: true
end
