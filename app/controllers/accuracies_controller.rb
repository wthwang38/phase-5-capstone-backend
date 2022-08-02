class AccuraciesController < ApplicationController
    skip_before_action :authorize, only: :create
    def create
        stat = Accuracy.create!(stat_params)
        render json: stat, status: :created
    end


    private

    def stat_params
        params.permit(:missed, :hit, :total, :timeba, :acc_percent, :user_id, :game_id)
    end
end
