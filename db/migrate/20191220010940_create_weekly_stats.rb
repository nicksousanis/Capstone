class CreateWeeklyStats < ActiveRecord::Migration[6.0]
  def change
    create_table :weekly_stats do |t|
      t.decimal :weekly_miles, precision: 5, scale: 2
      t.integer :user_id
      t.integer :goals
      t.integer :week_number

      t.timestamps
    end
  end
end
