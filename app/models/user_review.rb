class UserReview < ApplicationRecord
  belongs_to :mother_listing
  belongs_to :user
end
