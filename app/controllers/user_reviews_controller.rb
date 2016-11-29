class UserReviewsController < ApplicationController

 def new
    @user_review = MotherListingReview.new
  end

  def create
    @user_review = user_review.new(user_review_params)
    if @user_review.save
      redirect_to user_review_path(@user_review)
    else
      render :new
    end
  end

  private

  def user_review_params
    params.require(:user_review).permit(:id)
  end

end
