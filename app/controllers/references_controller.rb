class ReferencesController < ApplicationController
    before_action :authenticate_user!
    
    # def create
    #     @pet = Pet.find(params[:pet_id])
    #     @pet.reference.create(reference_params.merge(client: current_client))
    #     redirect_to reference_path(@pet)
    # end

    private

  def reference_params
    params.require(:reference).permit(:post, :rating)
  end
end
