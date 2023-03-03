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
  def my_planets
    @planets = current_user.planets
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path, status: :see_other
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :price_for_one_night, :description, photos: [])
  end
end
