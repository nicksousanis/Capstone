class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.decimal :distance, precision: 5, scale: 2
      t.integer :user_id
      t.time :workout_time

      t.timestamps
    end
  end
end
