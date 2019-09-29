class PhotosController < ApplicationController

        before_action :authenticate_user!
      
        def create
          @pet = Pet.find(params[:pet_id])
          @pet.photos.create(photo_params.merge(client: current_client))
          redirect_to dashboard_path(@pet)
        end
      
        private
      
        def photo_params
          params.require(:photo).permit(:pictures, :caption)
        end
      
      
end
