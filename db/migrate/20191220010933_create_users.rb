class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile_picture
      t.integer :city_id
      t.integer :completed_5k
      t.integer :completed_10k
      t.integer :completed_marathon

      t.timestamps
    end
  end
end
