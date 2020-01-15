class Api::RacewatchlistsController < ApplicationController
  def index
    # @racewatchlist = RaceWatchlist.all
    @racewatchlist = RaceWatchlist.where("user_id = ?", current_user.id)
    render "index.json.jb"
  end

  def create
    @racewatchlist = RaceWatchlist.new(
      user_id: current_user.id,
      race_id: params[:race_id],
    )
    @racewatchlist.save
    render "show.json.jb"
  end
end
