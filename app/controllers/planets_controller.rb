class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end
  def show
    @planet = Planet.find(params[:id])
  end
  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to show(@planet)
    else
      render :new, status: 422
    end
    def button
       @planet = Planet.user_id redirect_to show(show.html.erb)
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :image, :price_for_one_night, :description, :user_id )
  end
end
