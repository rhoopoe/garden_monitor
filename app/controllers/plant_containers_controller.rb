class PlantContainersController < ApplicationController

  def index
    @plant_containers = PlantContainer.all
  end
end
