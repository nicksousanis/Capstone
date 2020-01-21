class Api::CoordinatesController < ApplicationController
  def index
    @coordinates = Coordinate.all
    render "index.json.jb"
  end

  def show
    @coordinate = Coordinate.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    workout = Coordinate.create(
      workout_id: params[:workout_id],
      Latitude: params[:latitude],
      Longitude: params[:longitude],
    )
  end
end
