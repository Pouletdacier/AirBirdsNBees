class Bird < ApplicationRecord
  belongs_to :birdlord, class_name: 'User'
  has_many :bookings
end
