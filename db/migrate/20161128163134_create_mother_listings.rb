class CreateMotherListings < ActiveRecord::Migration[5.0]
  def change
    create_table :mother_listings do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.text :description
      t.integer :price
      t.float :average_rating
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
