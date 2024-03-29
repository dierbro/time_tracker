json.array!(@activities) do |activity|
  json.extract! activity, :id, :project_id, :from, :duration
  json.url activity_url(activity, format: :json)
end
