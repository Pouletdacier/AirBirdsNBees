class Bird < ApplicationRecord
  belongs_to :birdlord, class_name: 'User'
  has_many :bookings
  has_one_attached :photo
end
