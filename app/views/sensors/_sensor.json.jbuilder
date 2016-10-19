json.extract! sensor, :id, :sensor_id, :date, :coordinate, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)