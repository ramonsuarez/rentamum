class MotherListingReview < ApplicationRecord
  belongs_to :user
  belongs_to :mother_listing
end
