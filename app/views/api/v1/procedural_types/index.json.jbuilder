json.(@procedural_types) do |procedural_type|
  json.extract! procedural_type, :code , :name , :rips_code
end
