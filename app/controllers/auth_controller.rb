class AuthController < ApplicationController
    def create
        token = request.headers["Authorization"]
        userId = JWT.decode(token, "plants")[0]["user"]
        user = User.find(userId)
        render json: user.to_json(include: [:plants, :notes])
    end

    def login
        user = User.find_by(name: params["auth"]["name"])
        if user && user.authenticate(params["auth"]["password"])
            token = JWT.encode({user: user.id}, "plants")
            render json: {user: user, token: token}, status: :accepted
        else
            render json: {errors: 'Invalid username or password'}, status: :unauthorized
        end
    end
end
