class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.boolean :status
      t.references :user, foreign_key: true
      t.references :mother_listing, foreign_key: true

      t.timestamps
    end
  end
end
