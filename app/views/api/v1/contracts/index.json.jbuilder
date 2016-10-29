json.(@contracts) do |contract|
  json.id contract.id
  json.code contract.code
  json.name contract.name
  json.company contract.company
  json.start_date contract.start_date
  json.end_date contract.end_date
  json.state contract.state
end
