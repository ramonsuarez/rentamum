class UserFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :mother_listing
end
