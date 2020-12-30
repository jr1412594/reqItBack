class RequestsController < ApplicationController
    def index
        @requests = Request.all 

        render json: @requests, include: [:user, :item]
    end
    
    def create
        @request = Request.create(
            user_id: params[:user_id],
            item_id: params[:item_id]
        )

        render json: @request
    end

    def destroy
        @request = Request.find(params[:id])

        @request.destroy

        render json: {message: 'Request has been completed'}
    end
end
