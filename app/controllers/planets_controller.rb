class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end
  def show
    @planets = Planet.find(params[:id])
  end
  def new
    raise
  end

  def create
    raise
  end
end
