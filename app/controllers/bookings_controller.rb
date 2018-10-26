class BookingsController < ApplicationController
  def create
    @developer = Developer.find(params[:developer_id])
    @booking = Booking.new(booking_params)
    @booking.developer = @developer
    @booking.user = current_user
    if @booking.save
      redirect_to developers_path
    else
      render 'developers/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
