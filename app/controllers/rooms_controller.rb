class RoomsController < ApplicationController
    def index
        render json: Room.all
    end

    def show
        render json: Room.find(params[:id])
    end
    
    def create
        @room = Room.new()
        if @room.save
            cellRange = (0..399).to_a
            cellRange.each do |el|
                Cell.create(index: el, room_id: @room.id)
            end

            render json: @room
        else
            puts "ERROR!"
        end
    end



    
end
