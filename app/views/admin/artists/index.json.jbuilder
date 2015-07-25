json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :short_desc, :desc, :artworks_count
  json.url artist_url(artist, format: :json)
end
