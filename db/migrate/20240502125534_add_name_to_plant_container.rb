class AddNameToPlantContainer < ActiveRecord::Migration[7.1]
  def change
    add_column :plant_containers, :name, :string
  end
end
