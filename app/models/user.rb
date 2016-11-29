class User < ApplicationRecord
  has_many :user_reviews
  has_many :user_favorites
  has_many :bookings
  has_many :mother_listings # Could be renting out one or more moms
  has_many :mother_listing_reviews
  # Shortcut to be able to refference mother_listing directly without going through booking
  has_many :book_moms, through: :bookings, :source => :mother_listing
  # Shortcut to be able to refference mother_listing directly without going through user_favorite
  has_many :favorite_moms, through: :user_favorites, :source => :mother_listing

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
