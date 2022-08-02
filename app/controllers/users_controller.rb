class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
    def ranking
    users = User.all
    render json: users, include: :accuracies
    end
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show 
        render json: @current_user
    end

    def update
       @current_user.update(user_params) 
       render json: @current_user, status: :ok
    end
    private

    def user_params
        params.permit(:username, :password, :img_profile, :password_confirmation)
    end

end

