class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :bird
end
