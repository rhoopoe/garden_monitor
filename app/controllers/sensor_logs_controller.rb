class SensorLogsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @sensor_log = SensorLog.new(sensor_log_params)
    ActionCable.server.broadcast('sensor_logs', @sensor_log)
    if @sensor_log.save
      render json: @sensor_log, status: :created
    else
      render json: { errors: @sensor_log.errors }, status: :bad_request
    end
  end

  def index
    @sensor_logs = SensorLog.all
    ActionCable.server.broadcast('sensor_logs', @sensor_logs)
  end

  def show
    @sensor_log = SensorLog.find(params[:id])
    respond_to do |format|
      format.json { render json: @sensor_log }
    end
  end

  private

  def sensor_log_params
    params.require(:sensor_log).permit(:sensor_id, :value)
  end
end
