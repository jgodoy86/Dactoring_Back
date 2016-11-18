json.(@attention_areas) do |attention_area|
  json.extract! attention_area, :id, :company_code, :pabillion_code, :area_code, :area_name, :attention_type, :start_hour, :end_hour, :state
  
end
