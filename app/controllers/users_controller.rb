class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user.to_json(include: [:plants, :notes])
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = JWT.encode({user: user.id}, "plants")
            render json: {user: user, token: token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
