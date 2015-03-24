class ChangeRestaurantToRestaurantIdInReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :restaurant, index: true 
    remove_column :reviews, :restaurant, :string
  end
end
