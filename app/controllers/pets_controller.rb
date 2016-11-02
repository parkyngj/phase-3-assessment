class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])

    if request.xhr?
      @toy = @pet.shortest_named_toy
      render json: @toy
    end
  end
end
