class Plant < ApplicationRecord
  has_and_belongs_to_many :plant_containers
  validates :name, presence: true, uniqueness: true
  validates :variety, presence: true
  validates :plant_date, presence: true
end
