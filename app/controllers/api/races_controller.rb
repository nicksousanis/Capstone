class Api::RacesController < ApplicationController
  def index
    @races = Race.where("city_id = ?", current_user.city_id)
    render "index.json.jb"
  end
end
