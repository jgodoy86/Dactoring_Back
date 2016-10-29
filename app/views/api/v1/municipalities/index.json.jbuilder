json.(@municipalities) do |municipality|
 json.country_code municipality.country_code
 json.department_code municipality.department_code
 json.code municipality.code
 json.name municipality.name 
end
