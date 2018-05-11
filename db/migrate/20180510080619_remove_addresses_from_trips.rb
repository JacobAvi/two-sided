class RemoveAddressesFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :start_address, :string
    remove_column :trips, :finish_address, :string
  end
end
