class ReviewsController < ApplicationController
  def index
    @cafe = Cafe.find(params[:cafe_id])
    @reviews = @cafe.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to cafe_reviews_path(@review.cafe)
    else
      @cafe = Cafe.find(params[:id])
      render "cafe/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:cafe_id, :score, :content)
  end
end
