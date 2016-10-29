json.(@atention_areas) do |atention_area|
  json.extract! atention_area, :id, :company_code, :pabillion_code, :area_code, :area_name, :atention_type, :start_hour, :end_hour, :state
  
end
