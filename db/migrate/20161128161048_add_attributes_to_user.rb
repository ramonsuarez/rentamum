class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :address, :string
    add_column :users, :payment_method, :string
    add_column :users, :phone, :string
    add_column :users, :average_rating, :float, default: 0
    # TODO add favorites column as a ref when we create mothers

    # Too early to add avatars as we will do later with gems
    # add_column :users, :avatar, :string
  end
end
