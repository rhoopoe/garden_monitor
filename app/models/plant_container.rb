class PlantContainer < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :description, length: { maximum: 2000 }
  validates :notes, length: {maximum: 2000 }
  validates :location, length: { maximum: 200 }
  has_many :sensors
  has_and_belongs_to_many :plants
end
