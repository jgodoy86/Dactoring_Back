json.(@application_vias) do |application_via|
  json.extract! application_via, :code, :description, :sex
end
