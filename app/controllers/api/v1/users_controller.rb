class Api::V1::UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update_attributes!(money: params[:money])
        render json: user
    end

    def create
        user = User.new(user_params)

        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :phone_number, :birthday, :profile_picture, :money)
    end
end
