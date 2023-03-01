class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def my_bookings
  end

  def owner_bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
