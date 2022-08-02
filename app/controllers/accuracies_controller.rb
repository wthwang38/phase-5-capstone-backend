class AccuraciesController < ApplicationController
    skip_before_action :authorize, only: :create
   
    def index
        stats = Accuracy.all
        render json: stats, status: :ok    
    end

    def create
        stat = Accuracy.create!(stat_params)
        render json: stat, status: :created
    end

    def destroy
        acc = Accuracy.find_by(params[:id])
        render json: acc.destroy, status: :ok    
    end
    private

    def stat_params
        params.permit(:missed, :hit, :total, :timeba, :acc_percent, :user_id, :game_id)
    end
end
