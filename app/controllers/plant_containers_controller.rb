class PlantContainersController < ApplicationController
  before_action :set_plant_container, only: %i[ show edit update destroy ]

  # GET /plant_containers or /plant_containers.json
  def index
    @plant_containers = PlantContainer.all
  end

  # GET /plant_containers/1 or /plant_containers/1.json
  def show
  end

  # GET /plant_containers/new
  def new
    @plant_container = PlantContainer.new
  end

  # GET /plant_containers/1/edit
  def edit
  end

  # POST /plant_containers or /plant_containers.json
  def create
    @plant_container = PlantContainer.new(plant_container_params)

    respond_to do |format|
      if @plant_container.save
        format.html { redirect_to plant_container_url(@plant_container), notice: "Plant container was successfully created." }
        format.json { render :show, status: :created, location: @plant_container }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_containers/1 or /plant_containers/1.json
  def update
    respond_to do |format|
      if @plant_container.update(plant_container_params)
        format.html { redirect_to plant_container_url(@plant_container), notice: "Plant container was successfully updated." }
        format.json { render :show, status: :ok, location: @plant_container }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_containers/1 or /plant_containers/1.json
  def destroy
    @plant_container.destroy!

    respond_to do |format|
      format.html { redirect_to plant_containers_url, notice: "Plant container was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plant_container
    @plant_container = PlantContainer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def plant_container_params
    params.require(:plant_container).permit(:description, :notes, :location)
  end
end
