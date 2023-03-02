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
    @planet.user = current_user

    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: 422
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :price_for_one_night, :description, :image)
  end
end
