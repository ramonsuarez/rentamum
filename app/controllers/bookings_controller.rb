class BookingsController < ApplicationController
  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_booking_params
    params.require(:booking).permit(:id)
  end
end
