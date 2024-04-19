class SensorsController < ApplicationController
  before_action :set_sensor, only: [:show, :edit, :update, :destroy]

  def index
    @sensors = Sensor.all
    respond_to do |format|
      format.json { render json: @sensors.to_json(include: [:plant_container, :sensor_logs]) }
    end
  end

  def show

  end

  private
  def set_sensor
    @sensor = Sensor.find(params[:id])
  end
end
