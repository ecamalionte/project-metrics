json.array!(@problems) do |problem|
  json.extract! problem, :id, :title, :desc
  json.url problem_url(problem, format: :json)
end
