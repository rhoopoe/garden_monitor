# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Plant.create!(name: "Green Pea", variety: "Kelvedon", plant_date: "2024-03-16T14:27:13+0000")
Plant.create!(name: "Dill", variety: "Mammoth", plant_date: "2024-03-16T14:27:13+0000")

PlantContainer.create!(description: "Long brown shallow container", notes: "Old one")
PlantContainer.create!(description: "Light blue deep container", notes: "New one")

pea = Plant.find_by_name("Green Pea")
dill = Plant.find_by_name("Dill")

brown_container = PlantContainer.first
brown_container.update(plants: [pea, dill])