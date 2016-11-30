class MotherListingReviewsController < ApplicationController

  def new
    @mother_listing_review = MotherListingReview.new
  end

  def create
    @mother_listing_review = mother_listing_review.new(mother_listing_review_params)
    if @mother_listing_review.save
      redirect_to mother_listing_review_path(@mother_listing_review)
    else
      render :new
    end
  end

  private

  def mother_listing_review_params
    params.require(:mother_listing_review).permit(:id)
  end
end
