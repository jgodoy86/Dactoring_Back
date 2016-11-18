json.(@farmaceutic_forms) do |farmaceutic_form|
  json.extract! farmaceutic_form, :code, :description, :application_code
end
