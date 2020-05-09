class CellsController < ApplicationController
    def index
        @cells = Cell.all
        render json: @cells
    end

    def update
        @cell = Cell.find(params[:id])
        @cell.update(color: [params[:color]])

        render json: @cell
    end
end
