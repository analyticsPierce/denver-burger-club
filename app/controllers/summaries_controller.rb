class SummariesController < ApplicationController
  def index
    @meat_done_avg = Review.where(:restaurant_id === @restaurant.id).average(:meat_done)
  end
end
