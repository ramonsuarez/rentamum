class UserFavorite < ApplicationRecord
  belongs_to :user
  has_many :mother_listings
end
