class ClientsController < ApplicationController
    
    
    def home
        @client = Client.new
    end

    def show
        @client = Client.find(params[:id])
    end

end