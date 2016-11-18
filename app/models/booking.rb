class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :storage_space
  # after_validation :set_price, if: (:space_required_changed? || :start_date_changed? || :end_date_changed?)

  private

  # def set_price
  #   self.price = space_required * (end_date - start_date).to_i
  # end
end
