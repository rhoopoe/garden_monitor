class CreateSensorAndContainerAssociation < ActiveRecord::Migration[7.1]
  def change
    add_reference :sensors, :plant_container, foreign_key: true
    remove_column :sensors, :location
    rename_column :sensors, :descroption, :description
    add_column :plant_containers, :location, :string
  end
end
