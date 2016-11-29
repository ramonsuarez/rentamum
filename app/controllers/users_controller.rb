class UsersController < ApplicationController
  def show
    @user = User.find(user_params)
    # TODO Protect params
  end

  private

  def user_params
    params.require(:user).permit(:id)
  end
end
