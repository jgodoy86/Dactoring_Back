json.(@procedural_finalities) do |procedural_finality|
  json.extract! procedural_finality, :code , :name
end
