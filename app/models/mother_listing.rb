class MotherListing < ApplicationRecord
  belongs_to :user
  belongs_to :user_favorite
  has_many :bookings
  belongs_to :user_review
  has_many :mother_listing_reviews
  has_one :mother_skill
  has_many :skills, through: :mother_skill

  def validate_availability
      errors.add("Availability ") if self.availability_from >= self.availability_to
  end

  def self.search(search)
    # where("first_name LIKE ?", "%#{search}%")
    # where("last_name LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
    # this will work in development with SQLite. If you switch to PostgreSQL in production
    # you may need to change  LIKE to  ILIKE
  end

  has_attachment :photo
end
