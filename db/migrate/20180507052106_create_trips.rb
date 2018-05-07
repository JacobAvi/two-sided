class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.decimal :distance_travelled
      t.text :start_address
      t.text :finish_address
      t.float :start_lat
      t.float :start_long
      t.float :finish_lat
      t.float :finish_long
      t.decimal :fare
      t.integer :avail_seats
      t.references :driver, foreign_key: { to_table: :users }
      t.references :passenger, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
