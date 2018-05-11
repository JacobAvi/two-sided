class RemoveAddressesFromTripRequests < ActiveRecord::Migration[5.1]
  def change
    remove_column :trip_requests, :pickup_address, :string
    remove_column :trip_requests, :dropoff_address, :string
  end
end
