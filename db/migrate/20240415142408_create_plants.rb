class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :variety
      t.datetime :plant_date

      t.timestamps
    end
  end
end
