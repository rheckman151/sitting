class PetsController < ApplicationController
    before_action :authenticate_client!, only: [:new, :create]
    
    def index
        @pets = Pet.all
    end

    def new
        @pets = Pet.new
    end

    def create
        @pet = Pet.create(pet_params)
        if @pet.invalid?
            flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
        end
        redirect_to root_path
    end

    def posts
    
    end

    private

    def pet_params
        params.require(:pet).permit(:name, :type, :age, :gender, :medication)
    end
end
