json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :status, :started_on, :dead_line
  json.url project_url(project, format: :json)
end
