# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Plant.create!(name: 'Green Pea', variety: 'Kelvedon', plant_date: '2024-03-16T14:27:13+0000')
Plant.create!(name: 'Dill', variety: 'Mammoth', plant_date: '2024-03-16T14:27:13+0000')

PlantContainer.create!(description: 'Long brown shallow container', notes: 'Old one', location: "Back of balcony, floor")
PlantContainer.create!(description: 'Light blue deep container', notes: 'New one', location: "Back of balcony, elevated")

pea = Plant.find_by_name('Green Pea')
dill = Plant.find_by_name('Dill')

brown_container = PlantContainer.first
brown_container.update(plants: [pea, dill])

Sensor.create!(name: 'Soil moisture sensor', description: 'capacitive type',
              minimum_value: 0, maximum_value: 1024, is_active: true, plant_container_id: brown_container.id)

Sensor.create!(name: 'Soil moisture sensor', description: 'resistive type',
              minimum_value: 0, maximum_value: 256, is_active: true, plant_container_id: brown_container.id)
