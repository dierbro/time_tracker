json.array!(@projects) do |project|
  json.extract! project, :id, :name, :customer_id, :hourly_rate
  json.url project_url(project, format: :json)
end
