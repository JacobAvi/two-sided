class CreateTripRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_requests do |t|
      t.text :pickup_address
      t.text :dropoff_address
      t.float :pickup_long
      t.float :pickup_lat
      t.float :dropoff_long
      t.float :dropoff_lat
      t.references :passenger, foreign_key: { to_table: :users }
      t.references :trip, foreign_key: { to_table: :trips }

      t.timestamps
    end
  end
end