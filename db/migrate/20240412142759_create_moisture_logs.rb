class CreateMoistureLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :moisture_logs do |t|
      t.integer :sensor
      t.integer :value
      t.datetime :datetime

      t.timestamps
    end
  end
end
