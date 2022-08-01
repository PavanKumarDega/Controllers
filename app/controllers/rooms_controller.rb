class RoomsController < ApplicationController

def index
  @rooms = Room.all
end

def create
  @room =Room.new(room_params)
end
end
