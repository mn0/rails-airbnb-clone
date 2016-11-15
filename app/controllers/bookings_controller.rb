class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @Booking = Booking.new(booking_params)
    @booking.save
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:username)
  end
end
