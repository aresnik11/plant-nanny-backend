class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants.to_json(include: [:user, :notes])
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create
        plant = Plant.new(plant_params)
        if plant.save
            render json: plant
        else
            render json: {errors: plant.errors.full_messages}
        end
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :species, :image, :water, :light, :color, :user_id)
    end
end
