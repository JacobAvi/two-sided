class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.decimal :distance_travelled
      t.string :start_address
      t.string :finish_address
      t.float :start_lat
      t.float :start_long
      t.float :finish_lat
      t.float :finish_long
      t.decimal :fare
      t.integer :avail_seats
      t.references :driver
      t.references :passenger

      t.timestamps
    end
  end
end
