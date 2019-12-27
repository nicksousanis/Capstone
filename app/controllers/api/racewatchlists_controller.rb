class Api::RacewatchlistsController < ApplicationController
  def index
    # @racewatchlist = RaceWatchlist.all
    @racewatchlist = RaceWatchlist.where("user_id = ?", current_user.id)
    render "index.json.jb"
  end
end
