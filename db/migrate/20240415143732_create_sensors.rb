class CreateSensors < ActiveRecord::Migration[7.1]
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :descroption
      t.string :location
      t.integer :minimum_value
      t.integer :maximum_value
      t.boolean :is_active

      t.timestamps
    end
  end
end
