class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.integer :user_id
      t.decimal :distance, precision: 5, scale: 2

      t.timestamps
    end
  end
end
