class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def show
        gym = Gym.find(params[:id])
        render json: gym, include: :memberships
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.delete
        render json: {}, status: :no_content
    end

    private

    def record_not_found
        render json: {errors: "Gym not found"}, status: :not_found


    end 
end
