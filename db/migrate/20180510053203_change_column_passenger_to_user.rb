class ChangeColumnPassengerToUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :trip_requests, :passenger_id, :user_id
  end
end
