class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end
  def show
    @planet = Planet.find(params[:id])
  end
  def new
    @planets = Planet.new
  end

  def create
    @planets = Planet.new(planet_params)

    if @planets.save
      redirect_to show(@planets)
    else
      render :new, status: 422
    end
    private

    def planet_params
      params.require(:planet).permit(:name, :location, :image, :price_for_one_night, :description, :user_id )
    end

  end
end
