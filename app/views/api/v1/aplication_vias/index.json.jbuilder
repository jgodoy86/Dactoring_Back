json.(@aplication_vias) do |aplication_via|
  json.extract! aplication_via, :code, :description, :sex
end
