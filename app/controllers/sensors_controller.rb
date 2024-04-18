class SensorsController < ApplicationController
  def index
    @sensors = Sensor.all
    respond_to do |format|
      format.json { render json: @sensors.to_json(include: [:plant_container, :sensor_logs]) }
    end
  end
end
