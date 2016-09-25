class RoomhistoriesController < ApplicationController
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
