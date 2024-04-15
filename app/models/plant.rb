class Plant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :variety, presence: true
  validates :plant_date, presence: true
end
