json.array!(@tasks) do |task|
  json.extract! task, :id, :housework_type_id, :worker_id, :start_time, :end_time
  json.url task_url(task, format: :json)
end
