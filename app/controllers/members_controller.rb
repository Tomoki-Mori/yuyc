class MembersController < ApplicationController
    def index
      @members = Member.all
    end

    def new
     @member = Member.new
    end

    def create
    　member = Member.new(member_params)
    　if member.save
        redirect_to :action => "index"
　　　else
        redirect_to :action => "new"
    　end
    end

    def edit
      @member = Member.find(params[:id])
    end

    def update
      member = Member.find(params[:id])
      if member.update(member_params)
        redirect_to :action => "show", :id => member.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      member = Member.find(params[:id])
      member.destroy
      redirect_to action: :index
    end
    
    private
    def member_params
      params.require(:member).permit(:body, :image)
    end

end