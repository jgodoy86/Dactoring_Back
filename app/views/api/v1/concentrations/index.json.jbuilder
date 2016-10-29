json.(@concentrations) do |concentration|
  json.extract! concentration,  :code , :description
end
