class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show
        @user = User.find_by(params[:id])
        render json: @user, status: :ok
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            render json: @user, status: :created
        else
            render json: {errors: @user.errors.full_messages},
                    status: :unprocessable_entity
        end
    end

    def update 
        unless @user.update(user_params)
            render json: {errors: @user.errors.full_message},
                   status: :unprocessable_entity
        end
    end

    def destroy
        @user.destroy
    end

    def user_params
        params.permit(:name , :username, :email, :password, :age, :weight, :height)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
