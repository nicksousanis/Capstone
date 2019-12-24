class CreateCoordinates < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinates do |t|
      t.float :Latitude
      t.float :Longitude
      t.integer :workout_id

      t.timestamps
    end
  end
end
