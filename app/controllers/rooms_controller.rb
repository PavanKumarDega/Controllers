class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

   def create
     @room =Room.new(room_params)
     if @room.save
       flash[:notice]="Room Created successfully"
       redirect_to rooms_path
     else
       render 'new'
     end
        end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      flash[:notice]="room updated successfully"
      redirect_to rooms_path
    else
      render 'edit'
    end
  end
private
def room_params
  params.required(:room).permit(:std, :strength)
end
end
