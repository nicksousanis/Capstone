class CreateCompletedBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :completed_badges do |t|
      t.integer :user_id
      t.integer :badge_id

      t.timestamps
    end
  end
end
