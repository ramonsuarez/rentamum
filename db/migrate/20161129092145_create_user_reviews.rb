class CreateUserReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_reviews do |t|
      t.integer :dealer_id, :references => "user"
      t.integer :consumer_id, :references => "user"
      t.references :mother_listing, foreign_key: true
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
