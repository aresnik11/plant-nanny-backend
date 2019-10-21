class AuthController < ApplicationController
    def create
        token = request.headers["Authorization"]
        userId = JWT.decode(token, "plants")[0]["user"]
        user = User.find(userId)
        render json: user
    end

    def login
        user = User.find_by(name: params["auth"]["name"])
        if user && user.authenticate(params["auth"]["password"])
            token = JWT.encode({user: user.id}, "plants")
            render json: {user: user, token: token}
        end
    end
end
