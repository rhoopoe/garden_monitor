class AddDescriptionToPlant < ActiveRecord::Migration[7.1]
  def change
    add_column :plants, :description, :text
  end
end
