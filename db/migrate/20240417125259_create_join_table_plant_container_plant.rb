class CreateJoinTablePlantContainerPlant < ActiveRecord::Migration[7.1]
  def change
    create_join_table :plant_containers, :plants do |t|
      t.index [:plant_container_id, :plant_id]
      t.index [:plant_id, :plant_container_id]
    end
  end
end
