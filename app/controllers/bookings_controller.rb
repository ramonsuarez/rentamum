class BookingsController < ApplicationController
  before_action :set_booking_params, :only => [:show, :edit, :update, :destroy]

  def index
    @title = "My reservations"
    @bookings = current_user.bookings
  end

  def new

  end

  def show

  end

  def edit

  end

  def create
    @booking = Booking.new(set_booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking_params
    @booking = Booking.find(params[:id])
  end
end
