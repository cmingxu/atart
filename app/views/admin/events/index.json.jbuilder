json.array!(@events) do |event|
  json.extract! event, :id, :name, :gallery, :artist_name, :address, :lng, :lat, :begin_at, :end_at
  json.url event_url(event, format: :json)
end
