class SensorLogsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'sensor_logs'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
