class Renter::DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings
  end
end
