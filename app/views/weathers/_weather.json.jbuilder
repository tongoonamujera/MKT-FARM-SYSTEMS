json.extract! weather, :id, :Date, :Area, :Min, :Max, :user_id, :created_at, :updated_at
json.url weather_url(weather, format: :json)
