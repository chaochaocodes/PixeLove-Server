class CellsController < ApplicationController
    def index
        @cells = Cell.all
        render json: @cells
    end

    def update
        @cell = Cell.find(params[:id])
        @cell.update(color: params[:color])
        serialized_data = ActiveModelSerializers::Adapter::Json.new(
            CellSerializer.new(@cell)
        ).serializable_hash
        ActionCable.server.broadcast("rooms_channel_#{@cell.room_id}", serialized_data)
        render json: @cell
    end
end
