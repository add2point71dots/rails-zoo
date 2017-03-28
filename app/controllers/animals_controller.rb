class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params
    redirect_to animals_path unless animal.id == nil
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end
end
