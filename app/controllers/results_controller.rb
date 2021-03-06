class ResultsController < ApplicationController
    def index
        @results = Result.all
    end

    def new
     @result = Result.new
    end

    def create
        result = Result.new(result_params)
        result.user_id = current_user.id
        if result.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @result = Result.find(params[:id])
    end

    def edit
        @result = Result.find(params[:id])
    end

    def update
        result = Result.find(params[:id])
        if result.update(result_params)
          redirect_to :action => "show", :id => result.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        result = Result.find(params[:id])
        result.destroy
        redirect_to action: :index
    end

    private
    def result_params
      params.require(:result).permit(:competition, :body, :picture1, :event_date, :adress , :posia , :posib , :posic , :posid , :snipea , :snipeb ,  :snipec, :sniped)
    end

end
