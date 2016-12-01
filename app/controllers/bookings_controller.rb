class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    # @booking = Booking.new(set_booking_params)
    @mother_listing = MotherListing.find(params[:mother_listing_id])
    # starting_time = Date.parse(params[:acts_as_bookable_booking][:time_start])
    # ending_time = Date.parse(params[:acts_as_bookable_booking][:time_end])
    # current_user.book! @mother_listing, time_start: starting_time, time_end: ending_time
    current_user.book! @mother_listing
    redirect_to user_path(current_user)
    # if @booking.save
    #   redirect_to booking_path(@booking)
    # else
    #   render :new
    # end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking_params
    params.require(:booking).permit(:time_start, :time_end)
  end
end
