class RoomhistoriesController < ApplicationController
  before_action :logged_in_member, only: [:index, :destroy]

  def new
    @roomhistory = Roomhistory.new
  end

  def show
    @roomhistory = Roomhistory.find_all_by(number: room.number)
  end

  def index
    @roomhistory = Roomhistory.all
  end
end

private

def logged_in_member
  unless logged_in?
    store_location
    flash[:danger] = "Please log in."
    redirect_to login_url
  end
end
