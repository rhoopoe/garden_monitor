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

pea = Plant.new(name: 'Green Pea', description: 'Wrinkled type, cold resistant, climbing plant',
variety: 'Kelvedon', plant_date: '2024-03-16T14:27:13+0000')

dill = Plant.new(name: 'Dill', description: 'short herb, branched leaves, good with cucumbers',
                 variety: 'Mammoth', plant_date: '2024-03-16T14:27:13+0000')

pea.image.attach(io: File.open('db/seed_files/peas.jpg'), filename: 'peas.jpg')
dill.image.attach(io: File.open('db/seed_files/dill.jpg'), filename: 'dill.jpg')
pea.save!
dill.save!

sleep(5)


PlantContainer.create!(description: 'Long brown shallow container', notes: 'Old one', location: "Back of balcony, floor")
PlantContainer.create!(description: 'Light blue deep container', notes: 'New one', location: "Back of balcony, elevated")

brown_container = PlantContainer.first
brown_container.update(plants: [pea, dill])

Sensor.create!(name: 'Soil moisture sensor #1', description: 'capacitive type',
              minimum_value: 0, maximum_value: 1024, is_active: true, plant_container_id: brown_container.id)

Sensor.create!(name: 'Soil moisture sensor #2', description: 'resistive type',
              minimum_value: 0, maximum_value: 256, is_active: true, plant_container_id: brown_container.id)
