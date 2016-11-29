class CreateMotherListingReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :mother_listing_reviews do |t|
      t.text :description
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :mother_listing, foreign_key: true

      t.timestamps
    end
  end
end
