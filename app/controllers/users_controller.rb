class UsersController < ApplicationController
    # not requiring user to be authorized to create an account
    skip_before_action :authorized, only: [:create]

    def create
        user = User.new(user_params)
        # if the new user is valid
        if user.save
            # encode the user id (function in application controller)
            token = encode_token(user.id)
            # send back a serialized user with the token
            render json: {user: UserSerializer.new(user), token: token}, status: :created
        # otherwise send back the error
        else
            render json: {errors: user.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
