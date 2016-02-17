class RestaurantsController < ApplicationController
  def index
    
  end

  def show
    @restaurant = Restaurant.find_by_slug!(params[:id])
    @reviews = Review.where("restaurant_id = #{@restaurant.id}")
  end

end
