class ReviewsController < ApplicationController

  def index
    @restaurants = Restaurant.reviewed_restaurants.select(:name)
  end

  def new
    @review = Review.new
  end

  def create
    Review.create!(params[:review].permit(:restaurant_id, :judge_id, :meat_flavor, :meat_done, :bun, :toppings, :sides, :presentation, :service, :atmosphere, :comment))
    redirect_to root_path
  end
end
