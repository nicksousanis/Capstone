class Api::CoordinatesController < ApplicationController
  def index
    @coordinates = Coordinate.all
    render "index.json.jb"
  end
end
