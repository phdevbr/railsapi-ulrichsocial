class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        if users
            render json: users, status: 200
        else
            render json: {error: "No user was found"}
        end
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: user, status: 200
        else
            render json: {error: "Could not create user"}
        end
    end

    def show
        user = User.find_by(search_params)
        if user
            render json: user, status: 200
        else
            render json: {error: "The user was not found"}
        end
    end

    private 

    def search_params
        params.permit(:id)
    end

    def user_params
        params.permit(:username, :email, :password)
    end

end
