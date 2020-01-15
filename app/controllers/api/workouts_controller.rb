class Api::WorkoutsController < ApplicationController
  def show
    @workouts = Workout.where("user_id = ?", current_user.id)
    render "show.json.jb"
  end
end
