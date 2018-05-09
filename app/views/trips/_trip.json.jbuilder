json.extract! trip, :id, :distance_travelled, :start_address, :finish_address, :start_lat, :start_long, :finish_lat, :finish_long, :fare, :avail_seats, :user_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
