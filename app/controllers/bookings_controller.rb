class BookingsController < ApplicationController
  def create
    @bird = Bird.find(params[:bird_id])
    @booking = Booking.new(booking_params)
    @booking.renter_id = current_user.id
    @booking.bird_id = @bird.id
    @booking.status = "pending"
    if @booking.save!
      redirect_to renter_dashboards_path
    else
      render bird_path(@bird), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:price_total, :beginning_date, :end_date)
  end
end
