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
    @booking.status = "Pending"
    @booking.user = current_user
    if @booking.save
      redirect_to animal_path(@animal), notice: "The booking has been successfully created"
    else
      render :new
    end
  end

  def user_bookings
    @bookings = current_user.bookings

    @my_bookings = []
    current_user.animals.each do |animal|
      animal.bookings.each { |booking| @my_bookings << booking }
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:status] == "Accepted"
      @booking.status = "Accepted"
    else
      @booking.status = "Declined"
    end
    @booking.save
    redirect_to my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
