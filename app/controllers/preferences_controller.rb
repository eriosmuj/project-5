class PreferencesController < ApplicationController


    def index
        preferences = Preference.all
        render json: preferences, status: :ok 
    end

    def show
        preference = Preference.find(params[:id])
        render json: preference, status: :ok
    end

    def create
        preference = Preference.create(preference_params)
        render json: preference
    end

    private

    def preference_params
        params.permit(:name, :user_id, :airline_id)
    end

end
