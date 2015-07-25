json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :bookmarkable_id, :bookmarkable_type, :user_id
  json.url bookmark_url(bookmark, format: :json)
end
