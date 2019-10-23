class PlantsController < ApplicationController
    def create
        plant = Plant.new(plant_params)
        if plant.save
            render json: {plant: plant}
        else
            render json: {errors: plant.errors.full_messages}
        end
    end

    def destroy 
        plant = Plant.find(params[:id])
        plant.destroy
        render json: plant
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :species, :image, :water, :light, :color, :user_id)
    end
end
