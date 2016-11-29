class MotherSkill < ApplicationRecord
  has_many :skills
  belongs_to :mother_listing
end
