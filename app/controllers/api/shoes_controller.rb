class Api::ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render "index.json.jb"
  end

  def create
    @shoe = Shoe.create(
      name: params[:name],
      user_id: 1,
      distance: 0,
    )
    render "show.json.jb"
  end

  def update
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.distance = params[:distance]
    @shoe.save
  end
end
