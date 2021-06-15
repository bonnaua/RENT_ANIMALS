class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.animal = @animal
    @booking.user = current_user
    if @booking.save
      redirect_to animal_path(@animal), notice: "The booking has been successfully created"
    else
      render :new
    end
  end

  def user_bookings
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
