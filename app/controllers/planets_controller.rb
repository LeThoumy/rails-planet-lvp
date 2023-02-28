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

  # def create
  #   @planet = Planet.new(new_planet_name)

  #   if @planet.save
  #     redirect_to show(@planet)
  #   else
  #     render :new, status: 422
  #   end

  #   private

  #   def review_params
  #     params.require(:planet).permit(:title, :location, :image)
  #   end

  # end
end
