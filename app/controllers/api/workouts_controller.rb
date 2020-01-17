class Api::WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render "index.json.jb"
  end

  def show
    @workout = Workout.where("user_id = ?", current_user.id)
    render "show.json.jb"
  end

  def create
    @workout = Workout.new(
      user_id: params[:user_id],
      workout_time: params[:workout_time],
      distance: params[:distance],
    )
    @workout.save
    render "show.json.jb"
  end
end
