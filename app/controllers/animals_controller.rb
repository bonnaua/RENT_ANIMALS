class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    set_animal
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save

    redirect_to animal_path(@animal)
  end

  def destroy
    set_animal
    @animal.destroy

    redirect_to my_animals_path
  end

  def edit
    set_animal
  end

  def update
    set_animal
    @animal.update(animal_params)

    redirect_to animal_path(@animal)
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :category, :species, :description, :address, :age, :price_per_day, :photo)
  end

end
