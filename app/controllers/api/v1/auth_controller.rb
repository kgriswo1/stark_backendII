class Api::V1::AuthController < ApplicationController
    def signin
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: user
        else 
            render json: {errors: "Username or Password is incorrect"}
        end
    end

    def autologin
        user = User.find_by(id: request.headers["Authorization"])
        # byebug

        if user 
            # byebug
            render json: user  
        else
            # byebug
            render json: {errors: "Please log back in"}      
        end
    end 
end
