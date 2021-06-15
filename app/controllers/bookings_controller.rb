class BookingsController < ApplicationController

  def new
    @animal = Animal.find([:animal_id])
    @booking = Booking.new
  end

end


#créer les méthodes manquantes
