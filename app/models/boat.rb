class Boat < ApplicationRecord
  validates_presence_of :boat_name, :style, :description, :price, :image
  # belongs_to :booking
  has_many :bookings
  belongs_to :user
  has_attached_file :image, styles: {
    large: "600x600>",
    medium: "300x300>",
    thumb: "150x150#"
  },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
