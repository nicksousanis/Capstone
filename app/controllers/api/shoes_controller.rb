class Api::ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render "index.json.jb"
  end

  def create
    @shoe = Show.create(
      name: params[:name],
      user_id: 1,
      distance: 0,
    )
  end
end
