class CreateSensorAndLogAssociation < ActiveRecord::Migration[7.1]
  def change
    add_reference :sensor_logs, :sensor, foreign_key: true
  end
end