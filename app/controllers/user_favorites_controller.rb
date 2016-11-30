class UserFavoritesController < ApplicationController
before_action :set_user_favorite, only: [:show, :new, :create, :destroy]


def new
  @booking = Booking.new
end

def show

end

def create
  @user_favorite = UserFavorite.new(user_favorite_params)
    if @user_favorite.save
      redirect_to user_favorite_path(@user_favorite)
    else
      render :new
    end
end

def destroy
  @user_favorite.destroy
  redirect_to user_favorite_path
end

private

def set_user_favorite
  @booking = Booking.find(params[:id])
end

def user_favorite_params
  params.require(:user_favorite).permit(:id)

end
