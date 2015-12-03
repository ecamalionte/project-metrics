json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :progress_rate, :started_at, :dead_line_at
  json.url project_url(project, format: :json)
end
