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

end
