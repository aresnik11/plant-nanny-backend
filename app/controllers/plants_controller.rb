class PlantsController < ApplicationController
    def create
        plant = Plant.new(plant_params)
        if plant.save
            render json: plant, status: :created
        else
            render json: {errors: plant.errors.full_messages}. status: :not_acceptable
        end
    end

    def destroy 
        plant = Plant.find_by(id: params[:id])
        if plant
            plant.destroy
            render json: plant
        else
            render json: {errors: 'No plant found'}, status: :not_found
        end
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :species, :image, :water, :light, :color, :user_id)
    end
end
