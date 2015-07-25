json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :name, :desc, :artist_id, :images
  json.url artwork_url(artwork, format: :json)
end
