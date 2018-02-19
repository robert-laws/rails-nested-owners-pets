class PetsController < ApplicationController
  def index # either /owners/:owner_id/pets or /pets
    if params[:owner_id]
      @owner = Owner.find_by(id: params[:owner_id])
      if @owner.nil?
        redirect_to owners_path, alert: "Owner not Found"
      else
        @pets = @owner.pets
      end
    else
      @pets = Pet.all
    end
  end

  def show # either /owners/:owner_id/pets/:id or /pets/:id
    if params[:owner_id]
      @owner = Owner.find_by(id: params[:owner_id])
      @pet = @owner.pets.find_by(id: params[:id])
      if @pet.nil?
        redirect_to owner_pets_path(@owner), alert: "Pet not Found"
      end
    else
      @pet = Pet.find(params[:id])
    end
  end

  def new
    @pet = Pet.new(owner_id: params[:owner_id])
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to owner_pet_path(@pet.owner, @pet), notice: "Your pet was created successfully"
    else
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :owner_id)
  end
end
