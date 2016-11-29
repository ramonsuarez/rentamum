class MotherListing < ApplicationRecord
  belongs_to :user
  has_many :user_favorites, :bookings, :user_reviews, :mother_skills, :mother_listing_reviews
  has_many :skills, through: :mother_skill
end
