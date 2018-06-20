class ReviewsController < ApplicationController

  def create
    Review.create(review_params)

    redirect_back(fallback_location: root_path)
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:body, :product_id)
  end
end
