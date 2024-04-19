class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    respond_to do |format|
      format.html {render :index => @plants}
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    ps = plant_params
    @plant = Plant.new(ps)
    @container = PlantContainer.first
    @plant.plant_containers << @container

    if @plant.save
      redirect_to plants_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])

    if @plant.update(plant_params)
      redirect_to plants_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to plants_url
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :variety, :plant_date, :image)
  end

end
