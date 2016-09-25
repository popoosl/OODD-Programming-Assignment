class RoomHistoriesController < ApplicationController
  def new
    @roomhistory = Roomhistory.new
  end

  def show
    @roomhistory = Roomhistory.find_all_by(number: room.number)
  end
end
