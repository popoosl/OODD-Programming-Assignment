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
