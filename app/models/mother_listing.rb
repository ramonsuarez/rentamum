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

  def self.search(search)
    # where("first_name LIKE ?", "%#{search}%")
    where("content LIKE ?", "%#{search}%")
    # this will work in development with SQLite. If you switch to PostgreSQL in production
    # you may need to change  LIKE to  ILIKE
  end

end
