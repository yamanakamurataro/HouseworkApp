json.array!(@housework_types) do |housework_type|
  json.extract! housework_type, :id, :name
  json.url housework_type_url(housework_type, format: :json)
end
