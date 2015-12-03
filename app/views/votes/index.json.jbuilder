json.array!(@votes) do |vote|
  json.extract! vote, :id, :value, :votable_id, :votable_type
  json.url vote_url(vote, format: :json)
end
