class MembershipsController < ApplicationController
    def create
        new_membership = Membership.create(gym_id: params[:gym_id], client_id: params[:client_id], charge: params[:charge])
        render json: new_membership, status: :created
    end
end
