class PlantContainer < ApplicationRecord
  attribute :notes, default: "No notes"
  validates :description, length: { maximum: 2000 }, presence: true
  validates :notes, length: { maximum: 2000 }, presence: true
  validates :location, length: { maximum: 200 }, presence: true
  has_many :sensors, dependent: :nullify
  has_and_belongs_to_many :plants, dependent: :nullify

  def remove_plant(plant)
    self.plants.delete(plant)
  end

  def add_plant(plant)
    self.plants << plant
  end

  def remove_sensor(sensor)
    self.sensors.delete(sensor)
  end

  def add_sensor(sensor)
    self.sensors << sensor
  end
end
