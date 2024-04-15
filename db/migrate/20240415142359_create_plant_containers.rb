class CreatePlantContainers < ActiveRecord::Migration[7.1]
  def change
    create_table :plant_containers do |t|
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
