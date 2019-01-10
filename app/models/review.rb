class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :judge

  def create_meat_done_avg
    _meat_done_avg = Review.where(:restaurant_id === @restaurant.id).average(:meat_done)
  end
end
