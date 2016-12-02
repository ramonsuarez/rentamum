class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mother_listing

#Validations
validates_presence_of :guests_count
validate :booking_period_validation

def self.validate_and_create(params, current_user)
  booking = current_user.bookings.new(params[:booking])
  mother_listing = MotherListing.find(params[:booking][:mother_listing_id])
  if Date.today > mother_listing.availability_from && Date.today > mother_listing.availability_to
    message = "The listing's availability has expired"
    path = reserve_mother_listing_path params[:booking][:mother_listing_id]
  elsif mother_listing.availability_from > booking.check_in || mother_listing.availability_to < booking.check_out
    message = "You can reserve this listing only for the period #{mother_listing.availability_from} - #{mother_listing.availability_to}"
    path = reserve_mother_listing_path params[:booking][:mother_listing_id]
  else
    if booking.save
      message = "booking was successfully created."
      path = booking
    else
      message = booking.errors.full_messages.to_sentence
      path = reserve_mother_listing_path params[:booking][:mother_listing_id]
    end
  end
  result = {
    :message => message,
    :path => path
  }
  return result
end

def self.validate_and_destroy(booking)
  mother_listing = MotherListing.find(booking.mother_listing_id)
  if Date.today < booking.check_in + mother_listing.notice_period
    booking.destroy
    message = "successfully cancelled the booking!"
    path = bookings_path
  else
    message = "You cannot cancel the booking. Minimum notice period is #{mother_listing.notice_period} days"
    path = (booking)
  end
  result = {
    :message => message,
    :path => path
  }
  return result
end

def self.validate_and_update(params, booking)
  if booking.update_attributes(params[:booking])
   message = "booking was successfully updated."
   path = booking
 else
  message = booking.errors.full_messages.to_sentence
  path = {:action => "edit"}
end
result = {
  :message => message,
  :path => path
}
end

private
  def booking_period_validation
    errors.add("booking period ") if self.check_in >= self.check_out
  end
end
