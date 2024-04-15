class CreateSensorLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :sensor_logs do |t|
      t.integer :value

      t.timestamps
    end
  end
end
