class ChangeVarcharsToText < ActiveRecord::Migration[7.1]
  def change
    change_column :plant_containers, :description, :text
    change_column :plant_containers, :notes, :text
    change_column :plant_containers, :location, :text
    change_column :sensors, :description, :text
  end
end
