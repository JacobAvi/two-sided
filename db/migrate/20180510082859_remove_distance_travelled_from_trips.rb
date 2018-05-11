class RemoveDistanceTravelledFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :distance_travelled, :decimal
  end
end
