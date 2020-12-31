class UsersController < ApplicationController
    def index
        @users = User.all 

        render json: @users, include: [:requests]
    end

    def create
        @user = User.new user_params

        if @user.valid?
            User.save 
            render json: @user
        else 
            render json: @user.errors 
        end
    end


    private

    def user_params
        params.require(:user).permit :name, :room_number
    end
end
