class AddAddressesToTripRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :trip_requests, :pickup_address, foreign_key: { to_table: :addresses }
    add_reference :trip_requests, :dropoff_address, foreign_key: { to_table: :addresses }
  end
end
