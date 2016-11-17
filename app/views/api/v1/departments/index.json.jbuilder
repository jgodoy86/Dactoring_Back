json.(@departments) do |department|
 json.id department.id 
 json.country_code department.country_code  
 json.code department.code  
 json.name department.name 
end
