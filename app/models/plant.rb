class Plant < ApplicationRecord
  has_and_belongs_to_many :plant_containers
  has_one_attached :image
  validates :name, presence: true, uniqueness: true
  validates :variety, presence: true
  validates :plant_date, presence: true
  validates :description, presence: true
  validate :check_file_presence

  def check_file_presence
    errors.add(:image, "no plant image attached") unless image.attached?
  end
end
