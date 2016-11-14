class User < ApplicationRecord
  has_many :bookings
  has_many :storage_spaces
end
