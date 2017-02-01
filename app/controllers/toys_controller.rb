class ToysController < ApplicationController
  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys

    render json: @toys
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @toy = Toy.find(params[:id])
  end

  def all
    @toys = Toy.all
  end
end
