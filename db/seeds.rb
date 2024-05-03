pea = Plant.new(name: 'Green Pea', description: 'Wrinkled type, cold resistant, climbing plant',
                variety: 'Kelvedon', plant_date: '2024-03-16T14:27:13+0000')

dill = Plant.new(name: 'Dill', description: 'short herb, branched leaves, good with cucumbers',
                 variety: 'Mammoth', plant_date: '2024-03-16T14:27:13+0000')

pea.image.attach(io: File.open('db/seed_files/peas.jpg'), filename: 'peas.jpg')
dill.image.attach(io: File.open('db/seed_files/dill.jpg'), filename: 'dill.jpg')
pea.save!
dill.save!

sleep(5)

brown_container = PlantContainer.create!(name: 'Brown container', description: 'Long brown shallow container',
                                         notes: 'Old one', location: "Back of balcony, floor")
blue_container = PlantContainer.create!(name: 'Light blue container', description: 'With elevated drainage holes',
                                        notes: 'New one', location: "Back of balcony, elevated")
green_container = PlantContainer.create!(name: 'Light green pot', description: 'Rigid construction, with plate',
                                         notes: 'bottom has a slight crack', location: "Back of balcony, floor")

brown_container.plants << [pea, dill]
green_container.plants << [pea]
blue_container.plants << [dill]

sensor_1 = Sensor.create!(name: 'Soil moisture sensor #1', description: 'capacitive type, PCB',
                          minimum_value: 0, maximum_value: 4096, is_active: true, plant_container_id: brown_container.id)

sensor_2 = Sensor.create!(name: 'Soil moisture sensor #2', description: 'resistive type, with steel prongs',
                          minimum_value: 0, maximum_value: 4096, is_active: true, plant_container_id: brown_container.id)

sensor_3 = Sensor.create!(name: 'Soil moisture sensor #3', description: 'resistive type, PCB',
                          minimum_value: 0, maximum_value: 256, is_active: true, plant_container_id: brown_container.id)

User.create!(username: 'rhoopoe', email: 'rhoopoe@mail.com', password: 'password', password_confirmation: 'password',
             role: 'admin')

1000.times do |index|
  time = Time.now.advance(hours: index)
  # sensor_1.sensor_logs << SensorLog.new(sensor_id: sensor_1.id, value: rand(sensor_1.maximum_value),
  #                                       created_at: time, updated_at: time)
  sensor_2.sensor_logs << SensorLog.new(sensor_id: sensor_2.id, value: rand(sensor_2.maximum_value),
                                        created_at: time, updated_at: time)
  sensor_3.sensor_logs << SensorLog.new(sensor_id: sensor_3.id, value: rand(sensor_3.maximum_value),
                                        created_at: time, updated_at: time)
end