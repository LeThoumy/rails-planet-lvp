  class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet
    @booking.user = current_user
    #need to calculate price

    if @booking.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @planet = Planet.find(params[:planet_id])
    @booking = @planet.bookings.where(user: current_user )
  end

  def my_bookings
    my_bookings = current_user.planets
    @bookings = Booking.where(planet_id: my_bookings)
  end

  def my_travels
    @bookings = current_user.bookings
  end

  def accepted
    @booking = Booking.find(params[:id])
    @booking.status = "approved"
    @booking.save
  end

  def declined
    @booking = Booking.find(params[:id])
    @booking.status = "rejected "
    @booking.save
  end
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
