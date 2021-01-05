class IssuesController < ApplicationController
    def index 
        @issues = Issue.all

        render json: @issues
    end

    def create 
        @issue = Issue.create(image: params[:image])

        render json: @issue
    end
    
    
    private
    
    def issue_params
        params.require(:issue).permit(:image)
    end
end