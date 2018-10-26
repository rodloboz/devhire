class BookingsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.developer = @user
    @booking.client = current_user
    if @booking.save
      redirect_to users_path
    else
      render 'users/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
