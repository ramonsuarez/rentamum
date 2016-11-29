class CreateUserReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_reviews do |t|
      t.references :user, foreign_key: true
      t.references :mother_listing, foreign_key: true
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
