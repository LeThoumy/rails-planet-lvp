class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planets = Planet.find(params[:id])
  end
end
