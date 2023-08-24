class Bird < ApplicationRecord
  belongs_to :birdlord, class_name: 'User'
  has_many :bookings
  has_one_attached :photo
  validates :name, :details, :species, :price_per_day, :birdlord_id, presence: true
  # validates :photo, uniqueness: true
end
