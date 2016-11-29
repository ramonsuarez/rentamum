class CreateMotherSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :mother_skills do |t|
      t.references :skill, foreign_key: true
      t.references :mother_listing, foreign_key: true

      t.timestamps
    end
  end
end
