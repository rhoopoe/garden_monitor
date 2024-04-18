class SensorLog < ApplicationRecord
  belongs_to :sensor
  validates :value,
            presence: true,
            numericality: {only_integer: true, message: "Must be an integer"}
  validate :value_must_between_min_and_max

  def value_must_between_min_and_max
    if value > sensor.maximum_value || self.value < sensor.minimum_value
      errors.add(:value, "Must be between #{sensor.minimum_value} and #{sensor.maximum_value}")
    end
  end
end
