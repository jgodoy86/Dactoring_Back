json.(@farmaceutic_forms) do |farmaceutic_form|
  json.extract! farmaceutic_form, :code, :description, :aplication_code
end
