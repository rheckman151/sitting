class PetsController < ApplicationController

    def index
        @pet = Pet.first
    end

    def new
        @pet = Pet.new
    end
end
