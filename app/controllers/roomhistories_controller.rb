class RoomhistoriesController < ApplicationController

  def new
    @roomhistory = Roomhistory.new
  end


  def index
    @roomhistory = Roomhistory.where(number: params[:number])
    # @roomhistory = Roomhistory.where("number = ? OR userid = ?", params[:number], params[:userid])
  end

  def historybymember
    @roomhistory = Roomhistory.where(userid: params[:userid])
  end

  def create
    @roomhistory = Roomhistory.new(roomhistory_params)
    if @roomhistory.save
      redirect_to schedule_path
    else
      render 'new'
    end
  end

      private
      def roomhistory_params
        params.require(:roomhistory).permit(:number, :userid, :time_from, :time_to)
      end
end
