class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :destroy, :edit, :update]
  skip_before_action :authenticate_user!, only: :index

  def index
    #search bar
    @animals_search = []
    if params[:query].present?
      @animals_search = Animal.global_search(params[:query])
    end

    @animals = Animal.all


    @animals_to_geocode = @animals_search.size == 0 ? @animals : @animals_search
    #geocoder
    @markers = @animals_to_geocode.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('pawprint.svg')
      }
    end
  end

  def show
    @marker = [{
        lat: @animal.latitude,
        lng: @animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { animal: @animal }),
        image_url: helpers.asset_url('pawprint.svg')
      }]
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    @animal.save!

    redirect_to animal_path(@animal)
  end

  def destroy
    if current_user == @animal.user
      @animal.destroy
    end

    redirect_to my_animals_path
  end

  def edit
  end

  def update
    @animal.update(animal_params)

    redirect_to animal_path(@animal)
  end

  def user_animals
    @animals = current_user.animals
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :category, :species, :description, :address, :age, :price_per_day, :photo, :size, :sexe, :favorite_food, :favorite_game, :dos, :donts)
  end

end
