class Booking < ApplicationRecord
  # validates :price, presence: true
  belongs_to :boat
  belongs_to :user
end
