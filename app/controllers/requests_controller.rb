class RequestsController < ApplicationController
    def index
        @requests = Request.all 

        render json: @requests
    end
    
    def create
        @request = Request.create(
            user_id: params[:user_id],
            item_id: params[:item_id]
        )

        render json: @request
    end
end
