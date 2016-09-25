class RoomhistoriesController < ApplicationController
  before_action :logged_in_member, only: [:index, :create , :edit, :update,:new, :update ]
  protect_from_forgery with: :null_session

  def new
    @roomhistory = Roomhistory.new
    @room = Room.all
  end

  def create
    @roomhistory = Roomhistory.new(roomhistory_params)
    if @roomhistory.save
      flash[:success] = "Booked!"
      redirect_to new_roomhistory_path
    else
      render 'new'
    end
  end

def edit
end

  def update
end


  def show
    @roomhistory = Roomhistory.find_all_by(number: room.number)
  end

  def index
    @roomhistory = Roomhistory.all
  end


private

def logged_in_member
  unless logged_in?
    store_location
    flash[:danger] = "Please log in."
    redirect_to login_url
  end
end

  def roomhistory_params
    params.require(:roomhistory).permit(:number, :userid)
  end
end

