class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet
    @booking.user = current_user
    #need to calculate price

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @planet = Planet.find(params[:planet_id])
    @booking = @planet.bookings.where(user: current_user )
   end

  def my_bookings
    Booking.where(user: current_user)
  end

  def owner_bookings
    @owner_bookings = current_user.owner_bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
