class AirlinesController < ApplicationController
    def index
        airlines = Airline.all
        render json: airlines, status: :ok
    end

    def show
        airline = Airline.find(params[:id])
        render json: airline, status: :ok
    end

end
