class UserReviewsController < ApplicationController

 def new
    @user_review = UserReview.new
  end

  def create
    @user_review = UserReview.new(user_review_params)
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
