class Boat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  validates_presence_of :boat_name, :style, :description, :price, :image
  has_many :bookings
  belongs_to :user
  has_attached_file :image, styles: {
                                      large: "600x600>",
                                      medium: "300x300>",
                                      thumb: "150x150#"
  },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  def self.search(search)
    where("boat_name ILIKE ? OR style ILIKE ? OR description ILIKE ? OR toilets ILIKE ? OR shower ILIKE ? OR baths ILIKE ? OR kitchen ILIKE ?", "#{search}%", "#{search}%", "#{search}%", "#{search}%", "#{search}%", "#{search}%", "#{search}%")
  end
end
