class AddAddressesToTrips < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :start_address, foreign_key: { to_table: :addresses }
    add_reference :trips, :finish_address, foreign_key: { to_table: :addresses }
  end
end
