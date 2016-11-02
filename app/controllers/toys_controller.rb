class ToysController < ApplicationController
  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @toy = Toy.find(params[:id])
  end
end
