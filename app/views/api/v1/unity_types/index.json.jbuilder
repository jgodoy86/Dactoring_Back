json.(@unity_types) do |unity_type|
  json.extract! unity_type,  :code , :name
end

