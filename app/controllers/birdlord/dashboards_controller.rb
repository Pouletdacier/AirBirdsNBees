class Birdlord::DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings_as_birdlord
  end
end
