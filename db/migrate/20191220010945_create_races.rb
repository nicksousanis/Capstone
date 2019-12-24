class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :race_type
      t.date :date
      t.integer :city_id

      t.timestamps
    end
  end
end
