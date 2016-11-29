class MotherListing < ApplicationRecord
  belongs_to :user
  has_many :user_favorites
  has_many :bookings
  has_many :user_reviews
  has_many :mother_skills
  has_many :mother_listing_reviews
  has_many :skills, through: :mother_skill
end
