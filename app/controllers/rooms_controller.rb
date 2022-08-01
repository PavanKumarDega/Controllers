class RoomsController < ApplicationController

def index
  @rooms = Room.all
end
def new
  @room =Room.new
end

def create
  @room =Room.new(room_params)
  if @room.save
    flash[:notice]="Room successfully Created"
    redirect_to rooms_path
  else
    render 'new'
  end
end
private
def room_params
  params.require(:room).permit(:std,:strength)
end

end
