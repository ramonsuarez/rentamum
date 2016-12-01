class MotherListing < ApplicationRecord
  belongs_to :user
  belongs_to :user_favorite
  belongs_to :booking
  belongs_to :user_review
  has_many :mother_listing_reviews
  has_one :mother_skill
  has_many :skills, through: :mother_skill
  has_attachment :photo

  acts_as_bookable# time_type: :range #time_type: :none

    # Make searchable
  searchable do
      text :first_name, :last_name, :description, :location, :price, :average_rating
      end

end
