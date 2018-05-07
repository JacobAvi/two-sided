json.extract! profile, :id, :first_name, :last_name, :contact_no, :image_data, :car_type, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
