class SensorLogsController < ApplicationController

  def index
    @sensor_logs = SensorLog.all
  end
end
