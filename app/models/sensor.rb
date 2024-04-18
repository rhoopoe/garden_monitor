class Sensor < ApplicationRecord
  belongs_to :plant_container
  has_many :sensor_logs, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :is_active, inclusion: { in: [true, false] }
  validates :minimum_value, presence: true, numericality: { only_integer: true }, minimum: 0
  validates :maximum_value, presence: true, numericality: { only_integer: true }, minimum: 0
end
