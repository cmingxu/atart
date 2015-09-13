json.array!(@fund_raisings) do |fund_raising|
  json.extract! fund_raising, :id, :name, :en_name, :image, :moderator_id, :user_id, :target, :current_raised, :begin_at, :end_at, :story
  json.url fund_raising_url(fund_raising, format: :json)
end
