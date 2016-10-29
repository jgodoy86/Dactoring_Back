json.(@specialties) do |specialty|
  json.id specialty.id
  json.code specialty.code
  json.name specialty.name
  json.state specialty.state
end
