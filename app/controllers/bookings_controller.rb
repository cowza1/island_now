class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.user = current_user
    @booking.save
    redirect_to islands_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_guest, :island_id, :check_in_date, :checkout_date, :acceptance)
  end
end
