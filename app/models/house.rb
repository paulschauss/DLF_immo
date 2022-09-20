class House < ApplicationRecord
  has_one_attached :photo

  validates :name, presence: true, length: { maximum: 25 }
  validates :photo, presence: true
  validates :house_type, presence: true
  validates :price, presence: true
  validates :area, presence: true
  validates :bed, presence: true
  validates :bathroom, presence: true
  validates :outdoor_area, presence: true
end
