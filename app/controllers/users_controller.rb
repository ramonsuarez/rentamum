class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

private
  # Doc requires this but where do we use it?
  def user_params
    params.require(:user).permit(:first_name, :last_name, :average_rating, :photo)
  end

end
