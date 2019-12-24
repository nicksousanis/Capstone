class CreateRaceWatchlists < ActiveRecord::Migration[6.0]
  def change
    create_table :race_watchlists do |t|
      t.integer :user_id
      t.integer :race_id
      t.time :result_time

      t.timestamps
    end
  end
end
