class MotherListing < ApplicationRecord
  belongs_to :user
  belongs_to :user_favorite
  belongs_to :booking
  belongs_to :user_review
  has_many :mother_listing_reviews
  has_one :mother_skill
  has_many :skills, through: :mother_skill
end
