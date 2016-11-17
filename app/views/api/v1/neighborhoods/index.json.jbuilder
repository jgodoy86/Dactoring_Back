json.(@neighborhoods) do |neighborhood|
    json.country_code neighborhood.country_code
    json.department_code neighborhood.department_code
    json.municipality_code neighborhood.municipality_code
    json.code neighborhood.code
    json.name neighborhood.name
    json.zone neighborhood.zone
end
