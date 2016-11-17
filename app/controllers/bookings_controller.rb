class BookingsController < ApplicationController
  before_action do
    @storage_space = StorageSpace.find(params[:storage_space_id])
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.storage_space = @storage_space
    @booking.save
  end

  def new
    @booking = Booking.new
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:space_required)
  end
end
