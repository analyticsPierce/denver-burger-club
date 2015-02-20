class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end

  def create
    Review.create!(params[:review].permit(:restaurant, :judge, :meat_flavor, :meat_done, :bun, :toppings, :sides, :presentation, :service, :atmosphere, :comment))
    redirect_to root_path
  end
end
