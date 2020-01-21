class Api::CoordinatesController < ApplicationController
  def index
    @coordinates = Coordinate.all
    render "index.json.jb"
  end

  def show
    @coordinate = Coordinate.find_by(id: params[:id])
    render "show.json.jb"
  end
end
