class MotherSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :mother_listing
end
